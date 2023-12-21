import { TestBed } from '@angular/core/testing';

import { EnvironmentConfigService } from './environment-config.service';
import { HttpClientTestingModule } from '@angular/common/http/testing';

describe('EnvironmentConfigService', () => {
  let service: EnvironmentConfigService;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports:[HttpClientTestingModule]
    });
    service = TestBed.inject(EnvironmentConfigService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
