import { Injectable } from '@angular/core';
import { Observable, of, tap } from 'rxjs';
import * as envconfig from '../assets/runtime-environment.json';

export interface environmentConfig{
  env:string|null,
  port:number|null
}

/*
Set the below in tsconfig.json to import the json into the .ts file
 "esModuleInterop":true,
    "resolveJsonModule":true,

    Also set below to allow js file imports into .ts file

    "allowJs": true,
    "checkJs": false,
*/

@Injectable({
  providedIn: 'root'

})
export class EnvironmentConfigService {

  constructor() { }
  envConfig:environmentConfig={
    env:null,
    port:null
  }

  loadConfig(){
    console.log(envconfig)
    this.envConfig=envconfig
    return of(true)
  }

  fetchEnvConfig(){
    return this.envConfig;
  }

 
}
