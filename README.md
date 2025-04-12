# Steps to compute EIF PCR locally on Mac

* build golang binary in pallet-golang image
```
./go_build_pallet.sh # output binary 'main' in proj dir. 
```
* build the enclave image in kaniko image
```
./kaniko_docker_build.sh # output enclave_kaniko.tar
```

* build the customized amazonlinux image that will be used to run `nitro-cli`
```
cd aws_linux_with_nitro_cli_image
./build.sh
cd ..
```

* run `nitro-cli` in the above image to derive EIF and PCR
```
./nitro_build.sh
```

Note: we have confirmed that the PCR built from local mac is identical to the one from real linux. 
