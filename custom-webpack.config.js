import { EnvironmentPlugin } from 'webpack';
import { config } from 'dotenv';

config();
// Export a configuration object
// See [Wepack's documentation](https://webpack.js.org/configuration/) for additional ideas of how to 
// customize your build beyond what Angular provides.
module.exports = {
  plugins: [
    new EnvironmentPlugin(['env','port'])
]
}