﻿namespace BE.Data.Dtos.ProductDtos
{
    public class AddProductDtos
    {
        public int ClassProductIdclass { get; set; }
        public string NameProduct { get; set; }
        public string Desc { get; set; }
        public string Element { get; set; }
        public byte Hide { get; set; }
        public int Quantily { get; set; }
        public string ImgPath { get; set; }

        public int IdProducer { get; set; }
    }
}
