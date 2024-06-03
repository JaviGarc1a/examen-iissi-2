DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Ratings;
DROP TABLE IF EXISTS Recipes;

CREATE TABLE Users (
  userId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fullName VARCHAR(256),
  username VARCHAR(64) UNIQUE NOT NULL,
  avatarUrl VARCHAR(512),
  city VARCHAR(128),
  age INT,
  password VARCHAR(512) NOT NULL
);

CREATE TABLE Recipes (
  recipeId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(256) NOT NULL,
  description TEXT,
  imageUrl VARCHAR(512),
  timePreparation INT,
  authorId INT NOT NULL,
  FOREIGN KEY (authorId) REFERENCES Users(userId)
);

CREATE TABLE Ratings (
  ratingId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  recipeId INT NOT NULL,
  rating INT NOT NULL,
  comment TEXT,
  FOREIGN KEY (userId) REFERENCES Users(userId),
  FOREIGN KEY (recipeId) REFERENCES Recipes(recipeId)
);


-- La password de todos los usuarios es iissi
-- La password del usuario alumno es Password123.
INSERT INTO Users (userId, fullName, username, password, avatarUrl, city, age) VALUES
	(1, 'Carlos Arévalo', 'carevalo', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/men/62.jpg', 'Sevilla', 25),
	(2, 'Beatriz Barrios', 'beatriz', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/women/10.jpg', 'Barcelona', 30),
	(3, 'Claudia Carmona', 'claudia', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/women/11.jpg', 'Valencia', 35),
  (4, 'David Díaz', 'david', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/men/61.jpg', 'Sevilla', 40),
  (5, 'Elena Esteban', 'elena', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/women/20.jpg', 'Bilbao', 45),
  (6, 'Fernando Fernández', 'fernando', 'pbkdf2:sha256:150000$MjN72ikE$pbkdf2_sha256$390000$f1nd1ngn3m0$KVLJTAJuY5RX+E16VYtSGL9+DGwglzTy5Y6xRbHkhCs=897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/men/1.jpg', 'Málaga', 50),
  (7, 'Gloria Gómez', 'gloria', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/women/25.jpg', 'Zaragoza', 55),
  (8, 'Héctor Hernández', 'hector', 'pbkdf2:sha256:150000$MjN72ikE$897d960e08be9150d943c747ff6194904fd325821945ff7d7f5c1d1d08b40bbd', 'https://randomuser.me/api/portraits/men/99.jpg', 'Alicante', 60),
  (9, 'Alumno', 'alumno', 'pbkdf2_sha256$390000$f1nd1ngn3m0$KVLJTAJuY5RX+E16VYtSGL9+DGwglzTy5Y6xRbHkhCs=', 'https://randomuser.me/api/portraits/men/99.jpg', 'Sevilla', 25);

INSERT INTO Recipes (recipeId, title, description, imageUrl, timePreparation, authorId) VALUES 
  (1, 'Tortilla de patatas', 'La tortilla de patatas es un plato muy típico de la gastronomía española. Se elabora con patatas, huevos, cebolla, aceite de oliva y sal.', 'https://plus.unsplash.com/premium_photo-1700004501791-277c61d2f4e4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 30, 1),
  (2, 'Paella', 'La paella es un plato muy típico de la gastronomía española. Se elabora con arroz, verduras, carne, pescado, marisco, aceite de oliva, azafrán y sal.', 'https://images.unsplash.com/photo-1630175860333-5131bda75071?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFlbGxhfGVufDB8fDB8fHww', 60, 2),
  (3, 'Gazpacho', 'El gazpacho es una sopa fría muy típica de la gastronomía española. Se elabora con tomate, pepino, pimiento, ajo, pan, vinagre, aceite de oliva y sal.', 'https://plus.unsplash.com/premium_photo-1692781059201-d049a375a4d4?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 15, 3),
  (4, 'Salmorejo', 'El salmorejo es una sopa fría muy típica de la gastronomía española. Se elabora con tomate, pan, ajo, aceite de oliva, vinagre y sal.', 'https://images.unsplash.com/photo-1662469827900-e2d865491f53?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 15, 4),
  (5, 'Ensaladilla rusa', 'La ensaladilla rusa es una ensalada muy típica de la gastronomía española. Se elabora con patatas, zanahoria, guisantes, huevo, atún, aceitunas, mayonesa y sal.', 'https://plus.unsplash.com/premium_photo-1667115593045-3a5aec9f4f4f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGF0YXRhJTIwY29jaWRhfGVufDB8fDB8fHww', 30, 5),
  (6, 'Pulpo a la gallega', 'El pulpo a la gallega es un plato muy típico de la gastronomía gallega. Se elabora con pulpo, patatas, pimentón, aceite de oliva y sal.', 'https://plus.unsplash.com/premium_photo-1669261880961-ea68f9a2b7f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 60, 6),
  (7, 'Fabada asturiana', 'La fabada asturiana es un plato muy típico de la gastronomía asturiana. Se elabora con fabes, chorizo, morcilla, lacón, panceta, azafrán y sal.', 'https://images.unsplash.com/photo-1591386767153-987783380885?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cG90YWplfGVufDB8fDB8fHww', 120, 7),
  (8, 'Cocido madrileño', 'El cocido madrileño es un plato muy típico de la gastronomía madrileña. Se elabora con garbanzos, carne de ternera, carne de cerdo, chorizo, morcilla, tocino, zanahoria, patata, repollo, azafrán y sal.', 'https://images.unsplash.com/photo-1612700722193-f0410adb8949?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 120, 8),
  (9, 'Tarta de queso', 'La tarta de queso es un postre muy típico de la gastronomía española. Se elabora con queso, huevos, azúcar, nata, mantequilla, harina y mermelada.', 'https://images.unsplash.com/photo-1578775887804-699de7086ff9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGFydGElMjBkZSUyMHF1ZXNvfGVufDB8fDB8fHww', 60, 9),
  (10, 'Flan de huevo', 'El flan de huevo es un postre muy típico de la gastronomía española. Se elabora con huevos, azúcar, leche, nata, vainilla y caramelo.', 'https://images.unsplash.com/photo-1605256107786-c598074d5027?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxhbnxlbnwwfHwwfHx8MA%3D%3D', 60, 1);

INSERT INTO Ratings (ratingId, userId, recipeId, rating, comment) VALUES
  (1, 1, 1, 5, '¡Me encanta la tortilla de patatas!'),
  (2, 2, 2, 4, 'La paella está muy rica.'),
  (3, 3, 3, 3, 'El gazpacho es muy refrescante.'),
  (4, 4, 4, 2, 'El salmorejo está muy bueno.'),
  (5, 5, 5, 1, 'La ensaladilla rusa está muy rica.'),
  (6, 6, 6, 5, 'El pulpo a la gallega está muy rico.'),
  (7, 7, 7, 4, 'La fabada asturiana está muy rica.'),
  (8, 8, 8, 3, 'El cocido madrileño está muy bueno.'),
  (9, 9, 9, 2, 'La tarta de queso está muy rica.'),
  (10, 1, 10, 1, 'El flan de huevo está muy bueno.');