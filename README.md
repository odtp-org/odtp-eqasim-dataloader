# odtp-eqasim-dataloader
This is the component that will download and arrange files to make it compatible with eqasim pipeline. 

## ODTP Command

```
odtp new odtp-component-entry \
--name odtp-eqasim-dataloader \
--component-version 0.3.1 \
--repository https://github.com/odtp-org/odtp-eqasim-dataloader
```

## Tutorial

This component is a temporal solution until we have dataloaders defined for each source of data. This component accept one link to switchdrive and the download and uncompress it content to an output folder. 

Therefore, the only ENV variable available is: 

- LINK:

## Changelog

- v0.3.1 
    - Updated `odtp-component-client`
    - Added quiet to unzip
- v0.3.0 Updated `odtp.yml`

## Development

Developed by SDSC/CSFM
