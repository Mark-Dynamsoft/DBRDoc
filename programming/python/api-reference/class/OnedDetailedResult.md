---
layout: default-layout
title: Dynamsoft Barcode Reader Python API Reference - OnedDetailedResult Class
description: This page shows the OnedDetailedResult Class of Dynamsoft Barcode Reader for Python SDK.
keywords: OnedDetailedResult, class, api reference, python
needAutoGenerateSidebar: false
---

# OnedDetailedResult
Stores the OneD code details.

```python
class OnedDetailedResult
```  
  
---
  

## Attributes
  
| Attribute | Type |
|---------- | ---- |
| [`module_size`](#module_size) | *int* |
| [`start_chars_bytes`](#startcharsbytes) | *bytearray* |
| [`stop_chars_bytes`](#stop_chars_bytes) | *bytearray* |
| [`check_digit_bytes`](#check_digit_bytes) | *bytearray* |
| [`start_pattern_range`](#start_pattern_range) | *list[int]*|
| [`middle_pattern_range`](#middle_pattern_range) | *list[int]*|
| [`end_pattern_range`](#end_pattern_range) | *list[int]*|


### module_size
The barcode module size (the minimum bar width in pixel).

```python
OnedDetailedResult.module_size
```

### start_chars_bytes
The start chars in a byte array.

```python
OnedDetailedResult.start_chars_bytes
```

### stop_chars_bytes
The stop chars in a byte array.

```python
OnedDetailedResult.stop_chars_bytes
```

### check_digit_bytes
The check digit chars in a byte array.

```python
OnedDetailedResult.check_digit_bytes
```

### start_pattern_range
The position of the start pattern relative to the barcode location. Index 0 : X coordinate of the start position in percentage value; Index 1 : X coordinate of the end position in percentage value.

```python
OnedDetailedResult.start_pattern_range
```

### middle_pattern_range
The position of the middle pattern relative to the barcode location. Index 0 : X coordinate of the start position in percentage value; Index 1 : X coordinate of the end position in percentage value.

```python
OnedDetailedResult.middle_pattern_range
```

### end_pattern_range
The position of the end pattern relative to the barcode location. Index 0 : X coordinate of the start position in percentage value; Index 1 : X coordinate of the end position in percentage value. 

```python
OnedDetailedResult.end_pattern_range
```