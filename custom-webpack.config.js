const webpack = require('webpack');

module.exports = {
  plugins: [
    new webpack.DefinePlugin({
      $ENV: {
        env: JSON.stringify(process.env.env),
        port: JSON.stringify(process.env.port),
      }
    })
  ]
};