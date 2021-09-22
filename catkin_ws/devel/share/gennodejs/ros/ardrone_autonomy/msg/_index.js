
"use strict";

let navdata_altitude = require('./navdata_altitude.js');
let navdata_vision = require('./navdata_vision.js');
let navdata_vision_raw = require('./navdata_vision_raw.js');
let matrix33 = require('./matrix33.js');
let navdata_zimmu_3000 = require('./navdata_zimmu_3000.js');
let navdata_pressure_raw = require('./navdata_pressure_raw.js');
let navdata_vision_detect = require('./navdata_vision_detect.js');
let navdata_vision_of = require('./navdata_vision_of.js');
let navdata_rc_references = require('./navdata_rc_references.js');
let navdata_time = require('./navdata_time.js');
let navdata_trims = require('./navdata_trims.js');
let navdata_magneto = require('./navdata_magneto.js');
let navdata_kalman_pressure = require('./navdata_kalman_pressure.js');
let navdata_pwm = require('./navdata_pwm.js');
let navdata_phys_measures = require('./navdata_phys_measures.js');
let vector21 = require('./vector21.js');
let navdata_euler_angles = require('./navdata_euler_angles.js');
let navdata_gyros_offsets = require('./navdata_gyros_offsets.js');
let navdata_wifi = require('./navdata_wifi.js');
let navdata_games = require('./navdata_games.js');
let navdata_video_stream = require('./navdata_video_stream.js');
let navdata_trackers_send = require('./navdata_trackers_send.js');
let navdata_wind_speed = require('./navdata_wind_speed.js');
let navdata_demo = require('./navdata_demo.js');
let navdata_watchdog = require('./navdata_watchdog.js');
let navdata_vision_perf = require('./navdata_vision_perf.js');
let Navdata = require('./Navdata.js');
let navdata_raw_measures = require('./navdata_raw_measures.js');
let navdata_hdvideo_stream = require('./navdata_hdvideo_stream.js');
let navdata_adc_data_frame = require('./navdata_adc_data_frame.js');
let navdata_references = require('./navdata_references.js');
let vector31 = require('./vector31.js');

module.exports = {
  navdata_altitude: navdata_altitude,
  navdata_vision: navdata_vision,
  navdata_vision_raw: navdata_vision_raw,
  matrix33: matrix33,
  navdata_zimmu_3000: navdata_zimmu_3000,
  navdata_pressure_raw: navdata_pressure_raw,
  navdata_vision_detect: navdata_vision_detect,
  navdata_vision_of: navdata_vision_of,
  navdata_rc_references: navdata_rc_references,
  navdata_time: navdata_time,
  navdata_trims: navdata_trims,
  navdata_magneto: navdata_magneto,
  navdata_kalman_pressure: navdata_kalman_pressure,
  navdata_pwm: navdata_pwm,
  navdata_phys_measures: navdata_phys_measures,
  vector21: vector21,
  navdata_euler_angles: navdata_euler_angles,
  navdata_gyros_offsets: navdata_gyros_offsets,
  navdata_wifi: navdata_wifi,
  navdata_games: navdata_games,
  navdata_video_stream: navdata_video_stream,
  navdata_trackers_send: navdata_trackers_send,
  navdata_wind_speed: navdata_wind_speed,
  navdata_demo: navdata_demo,
  navdata_watchdog: navdata_watchdog,
  navdata_vision_perf: navdata_vision_perf,
  Navdata: Navdata,
  navdata_raw_measures: navdata_raw_measures,
  navdata_hdvideo_stream: navdata_hdvideo_stream,
  navdata_adc_data_frame: navdata_adc_data_frame,
  navdata_references: navdata_references,
  vector31: vector31,
};
