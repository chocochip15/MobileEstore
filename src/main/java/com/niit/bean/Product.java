package com.niit.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PRODUCTS")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="PRODUCT_ID")
	private Integer id;
	
	@Column(name="PRODUCT_NAME")
	private String name;
	@Column(name="Price")
	private Integer price;
	@Column(name="Description")
	private String description;
	private String category;
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
	@Transient
private	MultipartFile image;
	
	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
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
	public String getBatteryCapacity() {
		return batteryCapacity;
	}
	public void setBatteryCapacity(String batteryCapacity) {
		this.batteryCapacity = batteryCapacity;
	}
	public String getRemovableBattery() {
		return removableBattery;
	}
	public void setRemovableBattery(String removableBattery) {
		this.removableBattery = removableBattery;
	}
	public String getColours() {
		return colours;
	}
	public void setColours(String colours) {
		this.colours = colours;
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
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getId() {
		return id;
	}

}
