---   
description: Introduce the parameter definitions, organization structure, usage rules and related interfaces involved in Dynamsoft Barcode Reader.
title: Dynamsoft Barcode Reader Parameters - Structure and Interfaces of Parameters
keywords: Parameter,Interface,Hierarchy
layout: default-layout
needAutoGenerateSidebar: true
---


# Parameter Template Structure
This article introduces the parameter definitions, organization structure, usage rules, and related interfaces involved in Dynamsoft Barcode Reader.

## Definitions
Dynamsoft Barcode Reader uses a template to set parameters. A template contains three types of data: `ImageParameter`, `RegionDefinition`, and `FormatSpecification`.
- `ImageParameter` is used to specify the decoding settings on the entire image. The value of the `ImageParameter.Name` field is the unique identifier of the `ImageParameter`.
- `RegionDefinition` is used to specify a decoding region. It is also used to specify the decoding settings in this area. The value of the `RegionDefinition.Name` field is the unique identifier of `RegionDefinition`.
- `FormatSpecification` is used to specify a barcode format. It is also used to specify the decoding settings of this barcode format. The value of the `FormatSpecification.Name` field is the unique identifier of `FormatSpecification`.

## Organizational Relationship
- There is only one `ImageParameter` in a template definition. The `ImageParameter.Name` field denotes the unique identifier of the template;
- One or more `RegionDefinition` can be referenced through `RegionDefinitionNameArray` in `ImageParameter`;
- One or more `FormatSpecification` can be referenced through `FormatSpecificationNameArray` in `ImageParameter`;
- One or more `FormatSpecification` can be referenced through `FormatSpecificationNameArray` in `RegionDefinition`;
- In a JSON template file/string, you can use `ImageParameterContentArray`/`RegionDefinitionArray`/`FormatSpecificationArray` field to define multiple `ImageParameter`/`RegionDefinition`/`FormatSpecification`, for example:

```JSON
{
	"FormatSpecificationArray": [{
		"Name": "IP1_BF_QR_CODE"
	}],
	"ImageParameter": {
		"FormatSpecificationNameArray": [
			"IP1_BF_QR_CODE"
		],

		"Name": "default",

		"RegionDefinitionNameArray": [
			"region1"
		]
	},
	"RegionDefinition": {
		"Name": "region1"
	},
	"Version": "3.0"
}
```

## Scope
- When the same parameter is set in both `ImageParameter` and `RegionDefinition`, the decoding operation in the region specified by `RegionDefinition` is used; otherwise, the parameter values under the `ImageParameter` will be used.

- When the same parameter is set in both `ImageParameter` and `FormatSpecification`, the decoding operation for the barcode format specified by `FormatSpecification` is used; otherwise, the parameter values under the `ImageParameter` will be used.

- When the same parameter is set in both `RegionDefinition` and `FormatSpecification`, the decoding operation for the barcode format specified by `FormatSpecification` is used in the region specified by `RegionDefinition`; otherwise, the parameter values under the `ImageParameter` will be used.


## Parameter list
The parameters of `ImageParameter` are:
- ImageParameter.BarcodeColourModes
- ImageParameter.BarcodeComplementModes
- ImageParameter.BarcodeFormatIds
- ImageParameter.BarcodeFormatIds_2
- ImageParameter.BinarizationModes
- ImageParameter.ColourClusteringModes
- ImageParameter.ColourConversionModes
- ImageParameter.DeblurLevel
- ImageParameter.DeblurModes
- ImageParameter.DeformationResistingModes
- ImageParameter.Description
- ImageParameter.DPMCodeReadingModes
- ImageParameter.ExpectedBarcodesCount
- ImageParameter.FormatSpecificationNameArray
- ImageParameter.GrayscaleTransformationModes
- ImageParameter.ImagePreprocessingModes
- ImageParameter.IntermediateResultSavingMode
- ImageParameter.IntermediateResultTypes
- ImageParameter.LocalizationModes
- ImageParameter.MaxAlgorithmThreadCount
- ImageParameter.Name
- ImageParameter.Pages
- ImageParameter.PDFRasterDPI
- ImageParameter.PDFReadingMode
- ImageParameter.RegionDefinitionNameArray
- ImageParameter.RegionPredetectionModes
- ImageParameter.ResultCoordinateType
- ImageParameter.ReturnBarcodeZoneClarity
- ImageParameter.ScaleDownThreshold
- ImageParameter.ScaleUpModes
- ImageParameter.TerminatePhase
- ImageParameter.TextFilterModes
- ImageParameter.TextResultOrderModes
- ImageParameter.TextureDetectionModes
- ImageParameter.Timeout

The parameters of `RegionDefinition` are:
- RegionDefinition.BarcodeFormatIds
- RegionDefinition.BarcodeFormatIds_2
- RegionDefinition.Bottom
- RegionDefinition.ExpectedBarcodesCount
- RegionDefinition.FormatSpecificationNameArray
- RegionDefinition.Left
- RegionDefinition.MeasuredByPercentage
- RegionDefinition.Name
- RegionDefinition.Right
- RegionDefinition.Top

The parameters of `FormatSpecification` are:
- FormatSpecification.AllModuleDeviation
- FormatSpecification.AustralianPostEncodingTable 
- FormatSpecification.BarcodeAngleRangeArray
- FormatSpecification.BarcodeBytesLengthRangeArray
- FormatSpecification.BarcodeBytesRegExPattern
- FormatSpecification.BarcodeComplementModes
- FormatSpecification.BarcodeFormatIds
- FormatSpecification.BarcodeFormatIds_2
- FormatSpecification.BarcodeHeightRangeArray
- FormatSpecification.BarcodeTextLengthRangeArray
- FormatSpecification.BarcodeTextRegExPattern
- FormatSpecification.BarcodeWidthRangeArray
- FormatSpecification.BarcodeZoneBarCountRangeArray
- FormatSpecification.BarcodeZoneMinDistanceToImageBorders
- FormatSpecification.Code128Subset
- FormatSpecification.DeblurLevel
- FormatSpecification.DeformationResistingModes
- FormatSpecification.FindUnevenModuleBarcode
- FormatSpecification.HeadModuleRatio
- FormatSpecification.MinQuietZoneWidth
- FormatSpecification.MinRatioOfBarcodeZoneWidthToHeight
- FormatSpecification.MinResultConfidence
- FormatSpecification.MirrorMode
- FormatSpecification.ModuleSizeRangeArray
- FormatSpecification.MSICodeCheckDigitCalculation
- FormatSpecification.Name
- FormatSpecification.RequireStartStopChars
- FormatSpecification.ReturnPartialBarcodeValue
- FormatSpecification.StandardFormat
- FormatSpecification.TailModuleRatio

## Parameter template files assignment rules 
When setting parameters through a JSON template, Dynamsoft Barcode Reader will process the template according to the following rules:
- Parameters not defined in `ImageParameter`/`RegionDefinition`/`FormatSpecification` will be filled with default values
- `FormatSpecification` is automatically split into multiple settings for a single barcode format, for example:

```JSON
Template you set
{
    "ImageParameter":{
        "Name": "ImageParameter1", 
        "BarcodeFormatIds": ["BF_ONED"],    
        "FormatSpecificationNameArray": [
          "FormatSpecification1"
        ]
    }, 
    "FormatSpecification": {
      "Name": "FormatSpecification1", 
      "BarcodeFormatIds": ["BF_CODE_39","BF_CODE_128"],
      "MinResultConfidence": 20
    }
}
```


```JSON
Template used by DBR
{
    "ImageParameter":{
        "Name": "ImageParameter1", 
        "BarcodeFormatIds": ["BF_ONED"],    
        "FormatSpecificationNameArray": [
          "FormatSpecification1_BF_CODE_39",
          "FormatSpecification1_BF_CODE_128"
        ]
    },
    "FormatSpecificationArray":[
      {
        "Name": "FormatSpecification1_BF_CODE_39", 
        "BarcodeFormatIds": ["BF_CODE_39"],
        "MinResultConfidence": 20
      },
      {
        "Name": "FormatSpecification1_BF_CODE_128", 
        "BarcodeFormatIds": ["BF_CODE_128"],
        "MinResultConfidence": 20
      }
    ] 
}
```

- When the two templates are merged, duplicate parameter settings in the defined `ImageParameter` are handled as follows:

  - The following parameters take the maximum of the two settings
    - DeblurLevel
    - ExceptedBarcodeCount 
    - MaxAlgorithmThreadCount
    - PDFRasterDPI
    - ScaleDownThreshold
    - Timeout  
  - The following parameters take the combined values of two settings
    - BarcodeFormatIds
    - BarcodeFormatIds_2 
    - IntermediateResultTypes
    - Pages
  - The following parameters are controlled by the `ConflictMode`. If `ConflictMode` is `IGNORE`, the first value is taken. If `ConflictMode` is `OVERWRITE`, the last value is taken
    - AccompanyingTextReadingModes
    - BarcodeColourModes
    - BarcodeComplementModes
    - BinarizationModes
    - ColourClusteringModes
    - ColourConversionModes
   	- DeblurModes
   	- DeformationResistingModes
    - DPMCodeReadingModes
    - GrayscaleTransformationModes
    - ImagePreprogressingModes
   	- IntermediateResultSavingMode
    - LocalizationModes
    - PDFReadingMode
    - RegionPredetectionModes
    - ResultCoordinateType
    - ReturnBarcodeZoneClarity
    - ScaleUpModes
    - TerminatePhase
    - TextFilterModes
    - TextResultOrderModes
    - TextureDetectionModes
    - RegionDefinitionNameArray: Take the last RegionDefinitionName in the last RegionDefinitionNameArray
    - FormatSpecificationNameArray: Take the combined value of the two settings, but if the FormatSpecification is set for the same barcode format, FormatSpecificationNameArray will only keep the name of the last FormatSpecification

## Modes, Mode and Arguments 
The entire decoding process of Dynamsoft Barcode Reader consists of many subdivided functions, among which the control parameters of some function blocks are designed in accordance with the format of Modes-Mode-Argument. That is, a function is controlled by a Modes parameter. There are many ways to implement this function, each method (Mode) has multiple unique settings, and each setting is an Argument. 

<div align="center">
   <p><img src="assets/hierarchy-modes-mode-argument.png" alt="Modes-Mode-Argument hierarchy" width="100%" /></p>
   
</div>   

For example, one of the functions in the decoding process is barcode localization. Dynamsoft Barcode Reader provides the `LocalizationModes` parameter to control this function. It provides `LM_CONNECTED_BLOCKS`, `LM_STATISTICS`, `LM_LINES`, `LM_SCAN_DIRECTLY`, `LM_STATISTICS_MARKS`, `LM_STATISTICS_POSTAL_CODE`, a total of 6 methods to implement barcode localization. For LM_SCAN_DIRECTLY, there are two Arguments, `ScanStride` and `ScanDirection`.

## Interfaces to change settings 

Dynamsoft Barcode Reader provides two ways to set parameters: `PublicRuntimeSettings` and JSON template files. 
`PublicRuntimeSettings` is used to modify the Dynamsoft Barcode Reader built-in template, and only supports commonly used parameters. The following are the steps to update Dynamsoft Barcode Reader parameters through `PublicRuntimeSettings`:

1. (optional) Restore the parameter settings of the Dynamsoft Barcode Reader built-in template to the default values through the `ResetRuntimeSettings` interface
2. Call the `GetRuntimeSettings` interface to get the current `PublicRuntimeSettings` of the Dynamsoft Barcode Reader object
3. Modify the contents in `PublicRuntimeSettings` in the previous step
4. Call the `UpdateRuntimeSettings` interface to apply the modified `PublicRuntimeSettings` in the previous step to the Dynamsoft Barcode Reader object
5. (optional) Call the `SetModeArgument` interface to set the optional argument for a specified mode in Modes parameters.


JSON templates supports all Dynamsoft Barcode Reader parameters. The related parameter setting interfaces are:
- `InitRuntimeSettingsWithFile`: After calling this interface, the template definition in the file are processed according to the merging rules stated in the "Multiple parameter template files" section. Each independent template is stored in the Dynamsoft Barcode Reader object. All templates are merged into one template, then replace the built-in template of Dynamsoft Barcode Reader;
- `InitRuntimeSettingsWithString`: The effect after calling this interface is the same as `InitRuntimeSettingsWithFile`. The only difference is the template definition of `InitRuntimeSettingsWithString` is saved as a string;
- `AppendTplFileToRuntimeSettings`: After calling this interface, the template definition in the file will be processed according to the merging rules stated in the "Multiple parameter template files" section . Each independent template is stored in the Dynamsoft Barcode Reader object. All templates, including Dynamsoft Barcode Reader's built-in template, are merged into one template to replace the built-in template of Dynamsoft Barcode Reader;
- `AppendTplStringToRuntimeSettings`: The effect after calling this interface is the same as `AppendTplFileToRuntimeSettings`. The only difference is the template definition of `AppendTplStringToRuntimeSettings` is saved as a string.

## RegionDefinition and How It Works
Limiting the reading area of the barcode reader instance can help provide a better scanning UI as well optimize the performance of the SDK. It is important to understand how the RegionDefinition interface works, and what exactly you need to consider when coming up with the region percentage values.

By definition, the `top` parameter of the RegionDefinition is used to represent the top-most coordinate of the region, while `bottom` represents the bottom-most coordinate of the region. But how do you figure out the appropriate values to set them?

In order to set these values, we highly recommend setting `MeasuredByPercentage` to 1 to make this process as easy as possible. The next section assumes that this parameter is set to true.

For `top` and `bottom`, think of the height of the image or frame as a **vertical axis** that goes from 0 to 100:
- 0 represents the top-most point of the image or frame
- 100 represents the bottom-most point of the image or frame.

Please follow this diagram for a visual representation of different regions with various `top` and `bottom` values:

<div align="center">
  <img src="assets/topBottomRegions.png" alt="Top Bottom Region Percentages" width="100%" />
</div>

Please note that the above diagram is not limiting the horizontal view at all.

After determining where you want the top-most and bottom-most points of the reading region, you can find its corresponding percentage value either by trial and error (and using the naked eye) or you can take exact measurements and use those to calculate the exact percentage values.

Now for `left` and `right`, think of the width of the image or frame as a **horizontal axis** that goes from 0 to 100:
- 0 represents the left-most point of the image of frame
- 100 represents the right-most point of the image of frame

<div align="center">
  <img src="assets/leftRightRegions.png" alt="Left Right Region Percentages" width="100%" />
</div>

The above diagram represents various percentages and their visual representation. This assumes that you are not restricting the vertical area and leaving `top` and `bottom` unaffected.

Now let's group them all together to demonstrate various scanerios and their corresponding values

<div align="center">
  <img src="assets/regionPercentagesTotal.png" alt="Region Percentages" width="100%" />
</div>

And that is pretty much a gist of how the RegionDefinition works. If anything is unclear, please contact support.
