# dast_terraform

terraform init

terraform apply

**# zap 설치**
      - wget -q https://github.com/zaproxy/zaproxy/releases/download/v2.14.0/ZAP_2.14.0_Linux.tar.gz
      - tar -zxvf ZAP_2.14.0_Linux.tar.gz
      - rm ZAP_2.14.0_Linux.tar.gz
      - chmod +x ./ZAP_2.14.0/zap.sh
**# zap-cli 설치**
      - pip3 install --upgrade git+https://github.com/Grunny/zap-cli.git
      - whereis zap-cli
      - mv (zap-cli설치 위치) ./ZAP_2.14.0/
