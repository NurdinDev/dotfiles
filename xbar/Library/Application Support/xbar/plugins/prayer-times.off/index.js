#!/usr/bin/env /Users/nureddin/n/bin/node
// <xbar.title>Prayer Reminder (Turkey)</xbar.title>
// <xbar.version>v1.0</xbar.version>
// <xbar.author>Nureddin Badawi</xbar.author>
// <xbar.author.github>nurdindev</xbar.author.github>
// <xbar.desc>Show all prayer times with the next prayer time remaining</xbar.desc>

import xbar, { separator, isDarkMode } from "@sindresorhus/xbar";
import fetch from "node-fetch";
import fs from "fs";
import { DateTime, Duration } from "luxon";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const ilceCode = 17866;
const URL = `https://ezanvakti.herokuapp.com/vakitler?ilce=${ilceCode}`;
const tmpFile = __dirname + "/prayer-data.json";
const xbarItems = [];

let json;
let prayerData;

const today = () => DateTime.now().toFormat("dd.MM.yyyy");
const writeToFile = (content) => {
  const jsonContent = JSON.stringify(content, " ", 2);
  fs.writeFileSync(tmpFile, jsonContent, "utf8", (err) => {
    if (err) {
      console.error(
        "Encountered an error while writing content to the temp file"
      );
    }
  });
};

// ensure tmp file exists
if (!fs.existsSync(tmpFile)) {
  writeToFile([]);
}

// read tmp file content
try {
  json = JSON.parse(fs.readFileSync(tmpFile));
} catch (err) {
  console.error(`Error encountered while reading ${tmpFile}`);
}

prayerData = Object.keys(json).length ? json : null;

const todayIndex = prayerData
  ? prayerData.findIndex((day) => day.MiladiTarihKisa === today())
  : -1;

if (!prayerData || todayIndex === -1) {
  // -- fetch new data
  fetch(URL)
    .then((res) => res.json())
    .then((json) => {
      console.log(`Fetched new data from ${URL}`);
      // -- replace json and date in tmp file
      prayerData = json;
      writeToFile(json);
      outputData();
    });
} else {
  outputData();
}

function outputData() {
  const times = {
    Fajr: prayerData[todayIndex].Imsak,
    Dhuhr: prayerData[todayIndex].Ogle,
    Asr: prayerData[todayIndex].Ikindi,
    Maghrib: prayerData[todayIndex].Aksam,
    Isha: prayerData[todayIndex].Yatsi,
  };

  let remaining = null;
  Object.keys(times).forEach((key) => {
    // console.log(DateTime.now().toFormat("HH 'hours and' mm 'minutes'"));

    const time = DateTime.fromISO(times[key]);
    times[key] = time;

    const diff = time.diff(DateTime.local(), "seconds");
    const diffInSeconds = diff.values.seconds;
    xbarItems.push({
      text: `${key}: ${time.toFormat("hh:mm")}`,
      font: "Tajawal",
      size: 14,
      color: "cadetblue",
    });
    xbarItems.push(separator);

    if (!remaining && diffInSeconds > 0) {
      remaining = diffInSeconds;
    }
  });

  const remainingString = Duration.fromMillis(remaining * 1000).toFormat(
    "hh:mm"
  );

  const xbarOutput = [
    {
      text: `🕌  ${remainingString}`,
      dropdown: false,
      font: "Tajawal",
      size: 14,
    },
    separator,
    {
      text: prayerData[todayIndex].HicriTarihUzun,
      font: "Tajawal",
      color: "orange",
      size: "16",
    },
    ...xbarItems,
  ];

  xbar(xbarOutput);
}
