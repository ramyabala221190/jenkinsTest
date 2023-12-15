import { Component } from '@angular/core';
import { EnvironmentConfigService } from './environment-config.service';

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
    this.envConfigService.fetchEnvConfig().subscribe(
      (config:any)=>{
          let environment=config.env;
          let port=config.port;
          console.log(`App is being run in ${environment} environment on port ${port}`);
    }
    );
   
    }
}
