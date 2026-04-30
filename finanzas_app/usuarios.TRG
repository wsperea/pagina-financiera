TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER tg_usuarios_hash_pass\nBEFORE INSERT ON usuarios\nFOR EACH ROW\nBEGIN\n    -- Solo aplica el hash si la contraseña no viene ya hasheada \n    -- (esto evita doble encriptación si el backend ya lo hizo)\n    IF LENGTH(NEW.contraseña) < 64 THEN \n        SET NEW.contraseña = SHA2(NEW.contraseña, 256);\n    END IF;\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=1777044122182651
