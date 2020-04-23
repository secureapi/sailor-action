# Sailor SecureAPI action
Action which makes running [SecureAPI](https://secureapi.dev) security tests even easier.


## Example config

```yaml
name: Security tests

# Controls when the action will run. Triggers the workflow on push or pull request
# events but only for the master branch
on: [push]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  deploy:
   ... # deploy your web API here
  security-tests:
    runs-on: secureapi/sailor:latest
    steps:
    - name: Run sailor
      uses: secureapi/sailor-action@master
      with:
        url: "https://mywebbackend.com/api"
        username: ${{ secrets.USERNAME }}
        access_key: ${{ secrets.ACCESS_KEY }}
```

## Inputs

| name | example | description | required |
| ---- | ------- | ----------- | -------- |
|  url | https://api.mywebbackend.com |  URL you want to test | yes |
| username | hidalgopl | your SecureAPI username | yes |
| access_key | d2354fsd24d | your SecureAPI access key | yes |

 