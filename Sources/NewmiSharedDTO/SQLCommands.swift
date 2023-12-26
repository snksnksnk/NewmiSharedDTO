//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

/*
 Delete all from DB
 -------------------
 DELETE FROM public.news
 
 
 Add row to table
 INSERT INTO public.sources(COLUMN NAME) VALUES (value_here)

 INSERT INTO public.sources (id, name, language, "sourceCode" , "countryCode") VALUES (gen_random_uuid () , 'Money Review','GREEK', 'MONEYREVIEW', 'GR')
 
 
 
 ADD Cateogries
 INSERT INTO public.categories (id, name, "categoryCode") VALUES (gen_random_uuid () , 'Fashion', 'FASHION')
 
 Add row
 ALTER TABLE public.sources
 ADD COLUMN sourceCode varchar(255)
 
 Delete Row
 DELETE FROM public.sources WHERE name='MONEYREVIEW'
 
 Delete Column
 ALTER TABLE public.sources
 DROP COLUMN source
 */


//Migrations

//heroku run Run -- migrate --env production
//heroku run Run -- migrate --revert  --env production


//local Migrations
//swift run Run migrate
//swift run Run migrate --revert

