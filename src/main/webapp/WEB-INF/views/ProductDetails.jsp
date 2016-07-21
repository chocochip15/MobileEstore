<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MORE PRODUCT DETAILS</title>
</head>
<body>
<h1>More Details of Products</h1>

General<hr><br>
<table>
<thead><tr>Name</tr><tr>Price</tr><tr>Colours</tr><tr>Weight</tr><tr>Battery Capacity(mAh)</tr><tr>Removabel Battery</tr><tr>Dimensions(mm)</tr></thead>
<tbody><tr>${product.name}</tr><tr>${product.price}</tr><tr>${prdouct.colours}</tr><tr>${product.weight}</tr><tr>${product.batteryCapacity }</tr><tr>${product.removableBattery}</tr><tr>${product.Dimensions}</tr></tbody>
</table>
Display<hr><br>
<table>
<thead><tr>Screen Size</tr><tr>Touchscreen</tr><tr>Resolution</tr></thead>
<tbody><tr>${product.screenSize}</tr><tr>${product.touchScreen}</tr><tr>${product.resolution}</tr>></tbody>
</table>
Hardware<hr><br>
<table>
<thead><tr>Processor</tr><tr>RAM</tr><tr>Intenal Storage</tr><tr>Expandable Storage</tr></thead>
<tbody><tr>${product.processor}</tr><tr>${product.ram}</tr><tr>${product.internalStorage}</tr><tr>${product.expandableStorage }</tr></tbody>
</table>
Camera<hr><br>
<table>
<thead><tr>Front Camera</tr><tr>Rear camera</tr><tr>Flash</tr></thead>
<tbody><tr>${product.frontCamera}</tr><tr>${product.rearCamera}</tr><tr>${product.flash}</tr></tbody>
</table>
Operating System<hr><br>
${product.operatingSystem}


</body>
</html>