package build
#give your package name (demo)
zip -r demo-$BUILD_NUMBER.ZIP *
#give package name and s3 name
aws s3 cp demo-$BUILD_NUMBER.ZIP s3://artifactory-devops/

deploy package

rm -rf *
#give s3 name and package name
aws s3 cp s3://artifactory-devops/demo-$CHOICE.zip .
#give packge name 
unzip demo-$CHOICE.zip
#give the target server private ip
ssh root@10.1.0.202 'rm -rf /var/www/html/*'
#give the target server private ip
scp -r * root@10.1.0.202:/var/www/html/

i want deploy only one job in jenkins from artifactory-devops
package-deployement-job

zip -r package--$BUILD_NUMBER.zip *

aws s3 cp package--$BUILD_NUMBER.zip s3://artifactory-devops/

rm -fr *

aws s3 cp s3://artifactory-devops/package--$BUILD_NUMBER.zip . 
unzip package--$BUILD_NUMBER.zip
ssh root@10.1.0.202 'rm -fr /var/www/html/*'
scp -r * root@10.1.0.202:/var/www/html/

rm -fr *