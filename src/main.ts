import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/app.module';
import { environmentLoader } from 'envLoader';

platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.error(err));
