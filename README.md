# packer build image with customed script
1. Unzip packer_1.3.0_linux_amd64.zip and move it into your PATH
2. Modify aws credentials in bastion.json
3. Template validation:
	packer validate bastion.json
	packer  inspect bastion.json
4. Build image
	 packer build bastion.json



