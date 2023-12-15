import { Component } from '@angular/core';
import { EnvironmentConfigService, environmentConfig } from './environment-config.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title:string="jenkinsTest"
  constructor(private envConfigService:EnvironmentConfigService){

  }

  ngOnInit(){
    let config:environmentConfig=this.envConfigService.fetchEnvConfig();
    console.log(`App is being run in ${config.env} environment on port ${config.port}`);
    }
}
