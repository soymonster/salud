https://raw.githubusercontent.com/soymonster/salud/master/img.docx
LUIS MIGUEL CHAMBI MAMANI

/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 100316
Source Host           : 127.0.0.1:3306
Source Database       : practica4

Target Server Type    : MYSQL
Target Server Version : 100316
File Encoding         : 65001

Date: 2020-05-22 17:33:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for salud
-- ----------------------------
DROP TABLE IF EXISTS `salud`;
CREATE TABLE `salud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of salud
-- ----------------------------
INSERT INTO `salud` VALUES ('1', '2020-03-31', 'EL COVID-19 SE INICIA EN BOLIVIA', 'El COVID-19 dio con sus primeros infectados en la ciudad de oruro, lo cual dio paso a una cuarentena en el pais para su expansion a nivel nacional, esto para precaver su contagio.');
INSERT INTO `salud` VALUES ('2', '2020-05-06', 'COVID-19 SE EXPANDE EN BOLIVIA', 'El COVID-19 se expande en bolivia y los casos confirmados llegan aproximadamente a los tres mil casos confirmados, y esto alarma a la gente, coomo asi tambien a afectado en la economia de la ciudadania.');
INSERT INTO `salud` VALUES ('4', '2020-05-10', 'COMO ESTAR BIEN DE SALUD', '        Segun medicos de Bolivia dicen que tener una buena alimentacion,hacer deporte sano son la mejor medicina para que tu cuerpo este estable y fuerte, para asi en un futuro no tengas dificultades en tu funcionamiento de tu metabolismo.        ');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('admin', '10076465');
SET FOREIGN_KEY_CHECKS=1;
