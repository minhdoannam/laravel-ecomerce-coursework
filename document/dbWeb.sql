create table user (
	userID int auto_increment,
    firstName varchar(15),
    lastName varchar(25),
    userName varchar(25) unique,
    email varchar(50) unique,
    paswd varchar(50),
    dateRegister date,
    isVerified boolean,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(20),
    country varchar(20),
    primary key (userID)
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
    designDescript varchar(200),
    primary key (designID),
    foreign key (designOwner) references user (userID)
);

#Xem xét về pricelist

create table product (
	producID int auto_increment,
    productName varchar(50),
    productDescript varchar(200),
    designID int,
    categoryID int,
    primary key (productID),
    foreign key (designID) references design (designID),
    foreign key (categoryID) references category (categoryID)
);
    
create table product_option (
	optionID int,
	productID int,
    optionName varchar(15),
    primary key (optionID, productID)
);

create table option_value (
	valueID int,
    valueName varchar(15),
    valueCode varchar(15),
    productID int,
    optionID int,
    primary key (valueID, productID, optionID),
    foreign key (optionID, productID) references product_option (optionID, productID)
);

create table product_variant (
	variantID int,
    productID int,
    SKUs varchar(15),
    salePrice float,
    linkPicture varchar(15),
    #Chỗ này nên xem xét bổ sung thêm record nào thì bổ sung sau, nhất là khoảng link hình
    #Phần pricelist, có bổ sung hay không
    primary key (variantID, productID),
    foreign key (productID) references product (productID)
);

create table variant_value (
	variantID int,
    productID int,
    optionID int,
    valueID int,
    primary key (productID, variantID, optionID),
    foreign key (productID, variantID) references product_variant (productID, variantID),
    foreign key (optionID) references option_value (optionID)
);

#Tham khảo link này cách triển khai phần product và product variant 
# https://stackoverflow.com/questions/24923469/modeling-product-variants
create table sttOrder (
	sttID int auto_increment,
    sttName varchar(10), #draft, onCart, onPrinting, onShipping, done, isCanceled
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
    orderDate date,
    shipDate date,
    sttOrder int,
    primary key (saleOrderID)
);

alter table saleOrder
	add foreign key (sttOrder) references sttOrder(sttID)
    
alter table saleOrder
	add foreign key (shipperID) references shipper(shipperID)
    
alter table saleOrder
    add foreign key (paymentID) references payment(paymentID
    
alter table saleOrder
    add foreign key (customerID) references user (userID)
    
create table saleOrderLine (
	lineID int auto_increment,
    saleOrderID int,
    unitPrice float,
    quatity int,
    primary key (lineID),
    foreign key (saleOrderID) references saleOrder (saleOrderID)
);