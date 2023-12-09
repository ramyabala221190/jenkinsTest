import { Injectable } from '@angular/core';
import envConfig from '../assets/runtime-environment.json'
import { Observable, of, tap } from 'rxjs';

export interface environmentConfig{
  name:string,
  port:number|string
}

/*
Set the below in tsconfig.json to import the json into the .ts file
 "esModuleInterop":true,
    "resolveJsonModule":true,
*/

@Injectable({
  providedIn: 'root'
})
export class EnvironmentConfigService {

  constructor() { }

  private envConfigList:environmentConfig | undefined;

  loadConfig():Observable<environmentConfig>{
    return of(envConfig).pipe(
      tap((config:environmentConfig)=>{
        this.envConfigList=config;
      })
    )
  }

  fetchEnvConfig(){
    return this.envConfigList;
  }
}
