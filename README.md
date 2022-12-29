## curly-octo-potato
### Install Requirements
```
brew install node
npm install -g localtunnel
```
### Configure Requirements
```
```
### How to operate
```
make full
```
stop but don't delete the image: 
```
make stop
```
stop and clean everything: 
```
make clean
```
### Jenkins user and pass
```
Username: admin
Pass: Set from .env file
```
### Common problems in installation
If you can't run make and get ```invalid active developer path, missing xcrun```
```
xcode-select --install
```

