TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER tg_historial_update\nAFTER UPDATE ON transacciones\nFOR EACH ROW\nBEGIN\n    INSERT INTO historial_cambios (transaccion_id, usuario_id, monto_anterior, monto_nuevo, descripcion_anterior, descripcion_nueva, tipo_operacion)\n    VALUES (OLD.id, OLD.usuario_id, OLD.monto, NEW.monto, OLD.descripcion, NEW.descripcion, \'UPDATE\');\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER tg_historial_delete\nBEFORE DELETE ON transacciones\nFOR EACH ROW\nBEGIN\n    INSERT INTO historial_cambios (transaccion_id, usuario_id, monto_anterior, monto_nuevo, descripcion_anterior, descripcion_nueva, tipo_operacion)\n    VALUES (OLD.id, OLD.usuario_id, OLD.monto, NULL, OLD.descripcion, NULL, \'DELETE\');\nEND'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1777044122111345 1777044122148025
