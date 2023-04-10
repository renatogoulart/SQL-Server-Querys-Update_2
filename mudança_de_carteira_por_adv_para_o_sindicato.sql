update 
	[dbo].[tb_Processo_Requerente]
set 
	id_Usuario_Compras = 197

--select id_Usuario_Compras, * from tb_Processo_Requerente

where 
    id_Usuario_Compras <> 197 and
	[id_Processo_Requerente] in 
	(
		select 
			distinct [dbo].[tb_Processo_Requerente].[id_Processo_Requerente]
		from 
			[dbo].[tb_Processo]
			inner join [dbo].[tb_Processo_Advogado] on [dbo].[tb_Processo].id_Processo = [dbo].[tb_Processo_Advogado].id_Processo
			inner join [dbo].[tb_Processo_Requerente] on [dbo].[tb_Processo_Requerente].id_Processo = [dbo].[tb_Processo].id_Processo
		where 
			id_Advogado in (642, 2392, 5504, 8858, 1086, 2265, 1189, 4157, 641, 2528, 2545,1196, 3662, 9253)
			and [dbo].[tb_Processo_Advogado].fl_Ativo = 1
			and [dbo].[tb_Processo].fl_Ativo = 1 and [dbo].[tb_Processo].id_Status_Processo = 1 and [dbo].[tb_Processo].id_Fase_Processo = 4
			and [dbo].[tb_Processo_Requerente].fl_Ativo = 1 and [dbo].[tb_Processo_Requerente].id_Status_Requerente = 1 and [dbo].[tb_Processo_Requerente].id_Fase_Processo_Requerente = 4
	)

--Andre Luis Froldi 642 2392 5504 8858
--Carolina Fussi 1086 2265
--Ermindo Barreto 1189 4157
--Jose fiorini 641 2528 2545
--Marco Tulio Botino 637 1044
--Regina Quercetti Colerato 183 2354
--Edmeris 1196 3662 9253

