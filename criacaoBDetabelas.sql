-- criação banco de dados para o cenário de E-commerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- criar tabelas cliente, produto e pedido

CREATE TABLE client(
		idclient int auto_increment primary key,
        fname varchar(10) not null,
        minit char(3),
        lname varchar(20) not null,
        cpf char(11) not null,
        addressStreet varchar(15),
        addressNumber int(4) not null,
        neighborhood varchar (15) not null,
        city varchar (20) not null,
        state varchar (15) not null,
        constraint unique_cpf_client unique (cpf)
 );
 
CREATE TABLE product(
		idproduct int auto_increment primary key,
		classificationKids boolean,
        category enum('Eletronics','clothes', 'Toys', 'Groceries', 'Forniture', 'Gardening', 'Books', 'Beaty') not null,
        Review float default 0,
        size varchar(10)
);

CREATE TABLE orders(
		idorder int auto_increment primary key,
		idorderclient int,
        orderStataus enum('Cancelado)', 'Confirmado', 'Processando') default 'Processando',
        ordeeDescription varchar(255),
        sendValue float default 0,
        constraint fk_orders_client foreign key (idorderclient) references client(idclient)
			on update cascade
);

CREATE TABLE productStorage(
		idprodStorage int auto_increment primary key,
		storageLocation varchar(20),
        quantity int default 0
);

CREATE TABLE supplier(
		idsupplier int auto_increment primary key,
		socialName varchar (30) not null,
        cnpj char(15) not null,
        contact char(11) not null,
        constraint uniqueSupplier unique(cnpj)
);

CREATE TABLE seller(
		idseller int auto_increment primary key,
		socialName varchar (30) not null,
        absname varchar(255),
        cnpj char(15),
        cpf char(9),
        Location varchar (30),
        contact char(11) not null,
        constraint uniqueSellerCnpj unique(cnpj),
        constraint uniqueSellerCpf unique(cpf)
);

CREATE TABLE productSeller(
		idproductseller int,
		idproduct int,
        quantity int default 1,
        primary key(idproductseller, idproduct),
        constraint fk_product_seller foreign key (idproductseller) references seller (idseller),
        constraint fk_product_product foreign key (idproduct) references product(idproduct)
);

CREATE TABLE productOrder(
		idproductorder int,
		idorder int,
        quantity int default 1,
        poStatus enum ('Available', 'Out of Stock') default 'Available',
        primary key(idproductorder, idorder),
        constraint fk_productorder_seller foreign key (idproductorder) references product(idproduct),
        constraint fk_productorder_product foreign key (idorder) references orders(idorder)
);

CREATE TABLE storageLocation(
    idproductlocation INT,
    idstoragelocation INT,
    Location VARCHAR(20) NOT NULL,
    PRIMARY KEY(idproductlocation, idstoragelocation),
    CONSTRAINT fk_productstorage_product 
        FOREIGN KEY (idproductlocation) REFERENCES product(idproduct),
    CONSTRAINT fk_productstorage_storage 
        FOREIGN KEY (idstoragelocation) REFERENCES productStorage(idprodStorage)
);


CREATE TABLE productsupplier(
		idproductsupplier int,
		idproductsuplierproduct int,
        quantity int not null,
        primary key(idproductsupplier, idproductsuplierproduct),
        constraint fk_product_supplier_supplier foreign key (idproductsupplier) references supplier(idsupplier),
        constraint fk_product_supplier_product foreign key (idproductsuplierproduct) references product(idproduct)
);

