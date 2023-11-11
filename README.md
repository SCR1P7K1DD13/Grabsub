# 🔎grabsub

![Python Version](https://img.shields.io/badge/shell-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

Welcome to **grabsub**, your go-to tool for comprehensive subdomain discovery! This open-source project leverages the power of existing subdomain discovery tools to assemble an extensive and detailed list of subdomains associated with a target domain.

## Key Features

1. **Tool Integration:** grabsub seamlessly integrates popular subdomain discovery tools, such as Sublist3r, subfinder, and more, maximizing the scope and accuracy of subdomain identification.

2. **Automated Scanning:** Effortlessly launch automated scans against target domains, utilizing a combination of techniques to identify subdomains.
   
3. **Data Aggregation:** grabsub aggregates results from multiple tools into a unified and organized output, providing a comprehensive view of the target's subdomain landscape.

## 🔧Sources and tools 

```
Scripts:
 - sublister
 - subfinder
 - assetfinder
 Domains:
  - api.hackertarget.com
  - crt.sh
  - dns.bufferover.run
  - sonar.omnisint.io
  - threatcrowd.org
  - web.archive.org
```
## Installation
```
git clone https://github.com/SCR1P7K1DD13/grabsub.git
cd grabsub
chmod +x *.sh
sudo ./install.sh
```

### Usage

``` 
sudo ./grabsub.sh <target>
Eg: ./grabsub.sh google.com
```
## License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

## Disclaimer

Use SubDomainHarvester responsibly and ensure compliance with applicable laws and ethical standards. The authors are not responsible for any misuse of the tool.

Happy hunting!
