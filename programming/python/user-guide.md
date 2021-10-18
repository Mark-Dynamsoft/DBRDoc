---
layout: default-layout
title: Dynamsoft Barcode Reader for Python - User Guide
description: This is the user guide of Dynamsoft Barcode Reader for Python SDK.
keywords: user guide, python
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# User Guide for Python
In this guide, you will learn step by step on how to build a barcode reading application with Dynamsoft Barcode Reader SDK using Python.

## System Requirements

- Operating Systems:
    - Windows x64
    - Linux (x64, ARM32, ARM64)
    - macOS (10.15+)

- Python Versions: 
    - Python 3.9
    - Python 3.8
    - Python 3.7
    - Python 3.6
    - Python 3.5 (for versions below DBR 7.5)
    - Python 2.7 (for versions below DBR 7.2.2.3)

## Installation
Start terminal or command prompt to run the following command.

```
pip install dbr
```

## Build Your First Application
Let's start by creating a console application which demonstrates how to use the minimum code to read barcodes from an image file.  
>You can download the entire source code from [Here](https://download2.dynamsoft.com/samples/dbr/user-guide/dbr-python-sample.zip).

### Create a New Project 
Create a new source file named `DBRPythonSample.py`.

### Include the Library

Import dbr package in the source file.

   ```python
   from dbr import *
   ```

### Initialize a Barcode Reader Instance
1. Create an instance of Dynamsoft Barcode Reader.
   ```python
   reader = BarcodeReader()
   ```

2. Initialize the license key.
   ```python
   reader.init_license("<insert DBR license key here>")
   ```
    >Please replace `<insert DBR license key here>` with a valid DBR licensekey. You can request a trial license from <a href="https://www.dynamsoft.com/customer/license/trialLicense?utm_source=docs" target="_blank">Customer Portal</a>. 

### Configure the Barcode Scanning Behavior
1. Set barcode format and count to read.
   ```python
   settings = reader.get_runtime_settings()
   settings.barcode_format_ids = EnumBarcodeFormat.BF_ALL
   settings.barcode_format_ids_2 = EnumBarcodeFormat_2.BF2_POSTALCODE | EnumBarcodeFormat_2.BF2_DOTCODE
   settings.excepted_barcodes_count = 32
   reader.update_runtime_settings(settings)
   ```

    >The barcode formats to enable is highly application-specific. We recommend that you only enable the barcode formats your application requires. Check out [Barcode Format Enumeration]({{ site.enumerations }}format-enums.html) for full supported barcode formats. 

    >If you know exactly the barcode count you want to read, specify `excepted_barcodes_count` to speed up the process and improve the accuracy. 

### Decode and Output Results 
1. Decode barcodes from an image file.
2. Get and output barcode results.

   ```python
   try:
      image = r"[INSTALLATION FOLDER]/Images/AllSupportedBarcodeTypes.png"
      text_results = reader.decode_file(image)
      if text_results != None:
         for text_result in text_results:
            print("Barcode Format : " + text_result.barcode_format_string)
            if len(text_result.barcode_format_string) == 0:
               print("Barcode Format : " + text_result.barcode_format_string_2)
            else:
               print("Barcode Format : " + text_result.barcode_format_string)
            print("Barcode Text : " + text_result.barcode_text)
   except BarcodeReaderError as bre:
      print(bre)
   ```

   >For the error handling mechanism, the SDK throws [BarcodeReaderError]({{site.python_class}}BarcodeReaderError.html) for each function. You should add codes for exception handling based on your needs. 

   >The SDK returns multiple barcode information, including barcode count, barcode format, barcode text, location, barcode raw data, etc. Check out [TextResult]({{ site.python_class }}TextResult.html) for full supported result data.


### Release Resource

Destroy the instance to release all resources.

```python
del reader
```


### Build and Run the Project
1. Start terminal or command prompt and change to the target directory where `DBRPythonSample.py` located in.
2. Run the sample

```
python DBRPythonSample.py
```

>You can download the entire source code from [Here](https://download2.dynamsoft.com/samples/dbr/user-guide/dbr-python-sample.zip).

## Related Articles
- [How to select the appropriate DBR parameter configuration]({{ site.scenario_settings }})
- [How to upgrade to latest version](upgrade-instruction.md)
