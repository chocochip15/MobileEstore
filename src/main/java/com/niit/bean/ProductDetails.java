package com.niit.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PRODUCT_DETAILS")
public class ProductDetails implements Serializable {
	@Id
	@Column(name="PRODUCT_ID")
	private String id;
	@Column(name="PRODUCT_NAME")
	private String name;
	@Column(name="Price")
	private String price;
	
	
	private String touchScreen;
	private String dimensions;
	private String weight;
	private String batteryCapacity;
	private String removableBattery;
	private String colours;
	private String screenSize;
	private String resolution;
	private String processor;
	private String ram;
	private String internalStorage;
	private String expandableStorage;
	private String operatingSystem;
	private String frontCamera;
	private String rearCamera;
	private String flash;
	
	
	public String getId() {
		return id;
	}
	public String getTouchScreen() {
		return touchScreen;
	}
	public void setTouchScreen(String touchScreen) {
		this.touchScreen = touchScreen;
	}
	public String getDimensions() {
		return dimensions;
	}
	public void setDimensions(String dimensions) {
		this.dimensions = dimensions;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getRemovableBattery() {
		return removableBattery;
	}
	public void setRemovableBattery(String removableBattery) {
		this.removableBattery = removableBattery;
	}
	public String getScreenSize() {
		return screenSize;
	}
	public void setScreenSize(String screenSize) {
		this.screenSize = screenSize;
	}
	public String getResolution() {
		return resolution;
	}
	public void setResolution(String resolution) {
		this.resolution = resolution;
	}
	public String getProcessor() {
		return processor;
	}
	public void setProcessor(String processor) {
		this.processor = processor;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getInternalStorage() {
		return internalStorage;
	}
	public void setInternalStorage(String internalStorage) {
		this.internalStorage = internalStorage;
	}
	public String getExpandableStorage() {
		return expandableStorage;
	}
	public void setExpandableStorage(String expandableStorage) {
		this.expandableStorage = expandableStorage;
	}
	public String getOperatingSystem() {
		return operatingSystem;
	}
	public void setOperatingSystem(String operatingSystem) {
		this.operatingSystem = operatingSystem;
	}
	public String getFrontCamera() {
		return frontCamera;
	}
	public void setFrontCamera(String frontCamera) {
		this.frontCamera = frontCamera;
	}
	public String getRearCamera() {
		return rearCamera;
	}
	public void setRearCamera(String rearCamera) {
		this.rearCamera = rearCamera;
	}
	public String getFlash() {
		return flash;
	}
	public void setFlash(String flash) {
		this.flash = flash;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}


	public String getBatteryCapacity() {
		return batteryCapacity;
	}
	public void setBatteryCapacity(String batteryCapacity) {
		this.batteryCapacity = batteryCapacity;
	}
	public String getColours() {
		return colours;
	}
	public void setColours(String colours) {
		this.colours = colours;
	}


}
