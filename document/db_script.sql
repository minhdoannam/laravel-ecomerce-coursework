create table city (
	cityID int auto_increment,
    cityName varchar(25) unique,
    primary key (cityID)
);

create table address (
	addressID int auto_increment,
    address1 varchar(100),
    address2 varchar(100),
    district_ward varchar(20),
    postalCode varchar(10),
    cityID int,
    primary key (addressID),
    foreign key (cityID) references city (cityID)
);
create table user (
	userID int auto_increment,
    firstName varchar(15),
    lastName varchar(25),
    userName varchar(25) unique,
    email varchar(50) unique,
    paswd varchar(50),
    dateRegister date,
    country varchar(20),
	isVerified boolean,
    addressID int,
    primary key (userID),
    foreign key (addressID) references address (addressID)
);

create table category (
	categoryID int auto_increment,
    categoryName varchar(50),
    baseCost float,
    primary key (categoryID)
);

create table design (
	designID int auto_increment,
    designOwner int,
    linkPicture varchar(20),
    designName varchar(50),
    designDescript varchar(150),
    primary key (designID),
    foreign key (designOwner) references user (userID)
);

#Xem xét về pricelist

create table product (
	productID int auto_increment,
    productName varchar(50),
    productDescript varchar(150),
    designID int,
    categoryID int,
    primary key (productID),
    foreign key (designID) references design (designID),
    foreign key (categoryID) references category (categoryID)
);

create table size (
	sizeID int auto_increment,
    sizeName varchar(15),
    sizeCode varchar(5),
    primary key (sizeID)
);

create table color (
	colorID int auto_increment,
    colorName varchar(15),
    colorCode varchar(7),
    primary key (colorID)
);

create table product_variant (
	variantID int auto_increment,
    productID int,
    SKU varchar(20) unique,
    inStock int default 0, #ràng buộc không nhỏ hơn 0
    linkPicture varchar(25),
    stt varchar(10) not null, #soldOut, isAvailable ---> Chỗ này viết 1 trigger dựa vào inStock để tính.
    sizeID int,
    colorID int,
    foreign key (productID) references product (productID),
    foreign key (sizeID) references size (sizeID),
    foreign key (colorID) references color (colorID),
	primary key (variantID)
);

create table pricelist (
	priceID int auto_increment,
    priceName varchar(15),
    price float,
    primary key (priceID)
);

create table product_price (
	whoChange int,
    productID int,
    priceID int,
    startDate date,
    endDate date,
    foreign key (productID) references product (productID),
    foreign key (whoChange) references user (userID),
    foreign key (priceID) references pricelist (priceID),
    primary key (userID, productID, priceID)
);

create table sttOrder (
	sttID int auto_increment,
    sttName varchar(10), #onCart, onDraft, onPrinting, onShipping, paid, canceled
    primary key (sttID)
);

create table payment (
	paymentID int auto_increment,
    paymentType varchar(15),
    primary key (paymentID)
);

create table shipper (
	shipperID int auto_increment,
    companyName varchar(15),
    phone varchar(15),
    PRIMARY key (shipperID)
);

create table saleOrder (
	saleOrderID int auto_increment,
	paymentID int,
    shipperID int,
    customerID int,
    saleTax float,
    orderedDate date,
    deliveringDate date,
	fullfilledDate date,
    deliveringPlace int,
    sttOrder int,
    foreign key (deliveringPlace) references address (addressID),
	foreign key (sttOrder) references sttOrder(sttID),
	foreign key (shipperID) references shipper(shipperID),
	foreign key (paymentID) references payment(paymentID),
	foreign key (customerID) references user (userID),
    primary key (saleOrderID)
);
    
create table saleOrderLine (
	lineID int auto_increment,
    saleOrderID int,
    variantID int,
    unitPrice float,
    quatity int,
	foreign key (variantID) references product_variant(variantID),
    foreign key (saleOrderID) references saleOrder (saleOrderID),
        primary key (lineID)
);

create table staff (
	staffID int auto_increment,
    firstName varchar(15),
    lastName varchar(25),
    picture varchar(25),
    userName varchar(25) unique,
    email varchar(50) unique,
    paswd varchar(50),
    acceptedDate date,
    country varchar(20),
	isActive boolean,
    addressID int,
    primary key (staffID),
    foreign key (addressID) references address (addressID)
);

create table role (
	roleID int auto_increment,
    roleName varchar(15),
    descriptRole varchar (100),
    primary key (roleID)
);

create table staff_role (
	staffID int,
    roleID int,
    createdDate date,
    primary key (staffID, roleID)
);