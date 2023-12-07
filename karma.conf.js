const path=require('path');

process.env.CHROME_BIN=require('puppeteer').executablePath();
module.exports = function (config) {
  config.set({
    basePath: '',
    frameworks: ['jasmine', '@angular-devkit/build-angular'],
    plugins: [
      require('karma-jasmine'),
      require('karma-chrome-launcher'),
      require('karma-coverage'),
      require('@angular-devkit/build-angular/plugins/karma')
    ],
    client: {
      clearContext: false // leave Jasmine Spec Runner output visible in browser
    },
    coverageReporter: {
      type: 'text-summary'
    },
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: true,
    browserNoActivityTimeout: 30000,
    browsers: [
      'ChromeHeadless'
    ],
    customLaunchers: {
      ChromeHeadlessNoSandbox: {
          base: 'ChromeHeadless',
          flags: ['--no-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222']
      }
    },
    singleRun: true
  });
};