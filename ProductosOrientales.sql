USE [master]
GO
/****** Base de Datos de Productos creada por ******/
/****** Samuel Herrera	11-SIIN-1-013 ******/

CREATE DATABASE [ProductosOrientales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductosOrientales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProductosOrientales.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProductosOrientales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProductosOrientales_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProductosOrientales] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductosOrientales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductosOrientales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductosOrientales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductosOrientales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductosOrientales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductosOrientales] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductosOrientales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductosOrientales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductosOrientales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductosOrientales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductosOrientales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductosOrientales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductosOrientales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductosOrientales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductosOrientales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductosOrientales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductosOrientales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductosOrientales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductosOrientales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductosOrientales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductosOrientales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductosOrientales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductosOrientales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductosOrientales] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductosOrientales] SET  MULTI_USER 
GO
ALTER DATABASE [ProductosOrientales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductosOrientales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductosOrientales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductosOrientales] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProductosOrientales] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProductosOrientales]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/5/2018 10:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Edad] [int] NULL,
	[ProductoFavorito] [int] NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [nchar](13) NULL,
	[Sexo] [nchar](10) NULL,
	[GrupoId] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrupoProductos]    Script Date: 4/5/2018 10:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrupoProductos](
	[GrupoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Finalidad] [varchar](50) NULL,
 CONSTRAINT [PK_GrupoProductos] PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/5/2018 10:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [int] NULL,
	[Tipo] [varchar](25) NULL,
	[Gastable] [nchar](10) NULL,
	[GrupoID] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (1, N'Juan Perez', 45, 2, N'Juan@j.com', N'888-795-0000 ', N'M         ', 8)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (2, N'Alma Rosa', 36, 8, N'Alma@rosa.tu', N'955-795-5612 ', N'F         ', 5)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (3, N'Puncio Raca', 22, 1, N'Praca@puncio.com', N'809-555-4600 ', N'I         ', 6)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (4, N'Palama Real', 85, 9, N'la_real@palma.net', NULL, N'F         ', 3)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (5, N'Santico Palo', 33, 6, NULL, N'809-333-6504 ', N'M         ', 1)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (6, N'Pablo Escola', 19, 3, N'pablo.esc@bollo.com', N'849-444-4825 ', N'M         ', 9)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (7, N'Lucas Pince', 32, 7, N'lucas@pince.com', N'845-225-0489 ', N'I         ', 2)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (8, N'Ana Mana', 26, 4, N'Anamontna@gmail.com', NULL, N'F         ', 7)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (9, N'Mira Flora', 22, 5, NULL, NULL, N'F         ', 5)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Edad], [ProductoFavorito], [Correo], [Telefono], [Sexo], [GrupoId]) VALUES (10, N'Florinda Mesa', 29, 10, N'floresmesa@icloud.com', N'840-550-7790 ', N'F         ', 10)
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (1, N'Electrodomesticos', N'Hogar')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (2, N'Electronicos', N'Empresa')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (3, N'Comestibles', N'ConsumoMasivo')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (4, N'Muebles', N'Hogar')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (5, N'Muebles', N'Empresa')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (6, N'Electronicos', N'Hogar')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (7, N'Tecnologia', N'Empresa')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (8, N'Tecnologia', N'Hogar')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (9, N'Plasticos', N'Empresa')
INSERT [dbo].[GrupoProductos] ([GrupoID], [Nombre], [Finalidad]) VALUES (10, N'Electicidad', N'Hogar')
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (1, N'Pantalla-225', 2750, N'Parte', N'si        ', 1)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (2, N'Abellanas', 9, N'Alimento', N'si        ', 3)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (3, N'Licuadora', 3500, N'Electrodomestico', N'no        ', 2)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (4, N'SillaErgonomica', 5730, N'Mueble', N'no        ', 5)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (5, N'SillonEjecutivo', 12600, N'Mueble', N'no        ', 5)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (6, N'BateriaSamart', 500, N'parte', N'si        ', 1)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (7, N'Mouse', 750, N'Parte', N'no        ', 1)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (8, N'Teclado', 1500, N'parte', N'no        ', 1)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (9, N'Manzanas', 30, N'alimento', N'si        ', 3)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [Tipo], [Gastable], [GrupoID]) VALUES (10, N'Bombilla', 60, N'Parte', N'si        ', 10)
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_GrupoProductos] FOREIGN KEY([GrupoId])
REFERENCES [dbo].[GrupoProductos] ([GrupoID])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_GrupoProductos]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Productos] FOREIGN KEY([ProductoFavorito])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_GrupoProductos] FOREIGN KEY([GrupoID])
REFERENCES [dbo].[GrupoProductos] ([GrupoID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_GrupoProductos]
GO
USE [master]
GO
ALTER DATABASE [ProductosOrientales] SET  READ_WRITE 
GO
