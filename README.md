# odtp-eqasim-dataloader
This is the component that will download and arrange files to make it compatible with eqasim pipeline. 

## ODTP Command

```
odtp new odtp-component-entry \
--name odtp-eqasim-dataloader \
--component-version 0.4.0 \
--repository https://github.com/odtp-org/odtp-eqasim-dataloader
```

## Tutorial

This component is a temporal solution until we have dataloaders defined for each source of data. This component accept one link to switchdrive and the download and uncompress it content to an output folder. 

- LINK: Link to the switch drive. 
- PASSWORD: Optional: If the link to the switch drive contains a password it should be provided.

## Tutorial

### How to run this component as docker for development

Build the dockerfile 

```
docker build -t odtp-eqasim-dataloader .
```

Run the following command. Mount the correct volumes for input/output folders. 

```
docker run -it --rm -v ${pwd}/odtp-input:/odtp/odtp-input -v ${pwd}/odtp-output:/odtp/odtp-output --env-file .env --entrypoint bash odtp-eqasim-dataloader
```


## Changelog

- v0.5.0
    - Updated `odtp.yml` to version v0.5.0

- v0.4.0

- v0.3.5

- v0.3.4

- v0.3.3

- v0.3.2
    - Ubuntu fixed at 22.04
    - Python fixed at 3.10

- v0.3.1 
    - Updated `odtp-component-client`
    - Added quiet to unzip

- v0.3.0 Updated `odtp.yml`

## Development

Developed by SDSC/CSFM
