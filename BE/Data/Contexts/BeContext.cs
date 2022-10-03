using BE.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace BE.Data.Contexts
{
    public class BeContext : DbContext
    {
        #region Contructor
        public BeContext(DbContextOptions<BeContext> options) : base(options)
        {

        }
        #endregion

        #region Property
        public DbSet<User> users { get; set; }
        public DbSet<Bill> bill { get; set; }
        public DbSet<Address> addresses { get; set; }
        public DbSet<ClassProduct> product { get; set; }
        public DbSet<Color> colors { get; set; }
        public DbSet<ColorDetail> colorDetails { get; set; }
        public DbSet<Comment> comments { get; set; }
        public DbSet<Date> dates { get; set; }
        public DbSet<Notification> notification { get; set; }
        public DbSet<Order> orders { get; set; }
        public DbSet<OrderDetail> orderDetails { get; set; }
        public DbSet<Payment> payment { get; set; }
        public DbSet<PriceDetail> priceDetails { get; set; }
        public DbSet<Producer> producers { get; set; }
        public DbSet<Product> products { get; set; }
        public DbSet<Reply> replies { get; set; }
        public DbSet<Size> sizes { get; set; }
        public DbSet<SizeDetail> sizeDetails { get; set; }
        public DbSet<Voucher> vouchers { get; set; }
        #endregion


        #region Method
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);


            modelBuilder.Entity<User>(e =>
            {
                e.ToTable("User").HasIndex(k => k.Username).IsUnique();
                e.HasKey(k => k.Iduser);
                e.Property(k => k.Username).IsRequired().HasMaxLength(30).HasColumnType("varchar");
                e.Property(k => k.Password).IsRequired().HasMaxLength(1000).HasColumnType("varchar");
                e.Property(k => k.Fullname).HasMaxLength(50).HasColumnType("varchar");
                e.Property(k => k.PhoneNumber).HasMaxLength(11);
                e.Property(k => k.Email).HasMaxLength(50);
                e.Property(k => k.Birthday).HasDefaultValue(DateTime.Now).HasColumnType("date");
                e.Property(k => k.ClassOrder).HasColumnType("byte");
                e.Property(k => k.Block).HasColumnType("byte");
                e.Property(k => k.RegisterAt).HasColumnType("date");


            });
            modelBuilder.Entity<Address>(e =>
            {
                e.ToTable("Address");
                e.HasKey(k => k.Idaddress);
                e.Property(k => k.UserIduser);
                e.Property(k => k.Address1).HasMaxLength(200).HasColumnType("varchar");


            });
            modelBuilder.Entity<Bill>(e =>
            {
                e.ToTable("Bill");
                e.HasKey(k => k.Idbill);
                e.Property(k => k.OrderIdorder);
                e.Property(k => k.StatusBook).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.PayAt).HasDefaultValue(DateTime.Now).HasColumnType("date");
                e.Property(k => k.PhoneNumber).HasMaxLength(11).HasColumnType("varchar");


            });
            modelBuilder.Entity<ClassProduct>(e =>
            {
                e.ToTable("Classproduct");
                e.HasKey(k => k.Idclass);
                e.Property(k => k.ClassName).HasMaxLength(200).HasColumnType("varchar");

            });
            modelBuilder.Entity<Color>(e =>
            {
                e.ToTable("Color");
                e.HasKey(k => k.Idcolor);
                e.Property(k => k.NameColor).HasMaxLength(200).HasColumnType("varchar");
            });
            modelBuilder.Entity<ColorDetail>(e =>
            {
                e.ToTable("ColorDetail");
                e.HasKey(k => k.ColorIdcolor);
                e.Property(k => k.ProductIdproduct);
                e.Property(k => k.QuanlityColor);

            });
            modelBuilder.Entity<Comment>(e =>
            {
                e.ToTable("Comment");
                e.HasKey(k => k.Idcmt);
                e.Property(k => k.UserIduser);
                e.Property(k => k.ProductIdproduct);
                e.Property(k => k.Comment1).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.ClassCmt).HasColumnType("smallint");

            });
            modelBuilder.Entity<Date>(e =>
            {
                e.ToTable("Date");

                e.Property(k => k.Date1).HasDefaultValue(DateTime.Now).HasColumnType("date");
                e.HasKey(k => k.Date1);


            });
            modelBuilder.Entity<Notification>(e =>
            {
                e.ToTable("Notification");
                e.HasKey(k => k.Idnoification);
                e.Property(k => k.ShopIduser2);
                e.Property(k => k.From).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.To).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Seen).HasColumnType("byte");
                e.Property(k => k.ContentNofi).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.NofiAt).HasDefaultValue(DateTime.Now).HasColumnType("date");
            });
            modelBuilder.Entity<Order>(e =>
            {
                e.ToTable("Order");
                e.HasKey(k => k.Idorder);
                e.Property(k => k.VouchersIdvoucher);
                e.Property(k => k.BillIdbill);
                e.Property(k => k.StatusBook).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Note).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.OrderAt).HasDefaultValue(DateTime.Now).HasColumnType("date");
                e.Property(k => k.Address).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Location).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.InPlace).HasColumnType("byte");

            });
            modelBuilder.Entity<OrderDetail>(e =>
            {
                e.ToTable("OrderDetail");
                e.HasKey(k => k.OrderIdorder);
                e.Property(k => k.ProductIdproduct);
                e.Property(k => k.Note).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.QuantilyOrder);

            });
            modelBuilder.Entity<Payment>(e =>
            {
                e.ToTable("Payment");
                e.HasKey(k => k.Idpayment);
                e.Property(k => k.ShopIduser2);
                e.Property(k => k.ContentPay).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.PayAt).HasDefaultValue(DateTime.Now).HasColumnType("date");


            });
            modelBuilder.Entity<PriceDetail>(e =>
            {
                e.ToTable("PriceDetail");
                e.HasKey(k => k.ProductIdproduct);
                e.Property(k => k.PriceImport).HasColumnType("long");
                e.Property(k => k.PriceExport).HasColumnType("long");
                e.Property(k => k.DateDate).HasDefaultValue(DateTime.Now).HasColumnType("date");


            });
            modelBuilder.Entity<Producer>(e =>
            {
                e.ToTable("Producer");
                e.HasKey(k => k.Idproducer);
                e.Property(k => k.NameProducer).HasMaxLength(200).HasColumnType("varchar");
            });
            modelBuilder.Entity<Product>(e =>
            {
                e.ToTable("Product");
                e.HasKey(k => k.Idproduct);
                e.Property(k => k.ClassProductIdclass);
                e.Property(k => k.NameProduct).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Desc).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Element).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Quantily).HasColumnType("byte");
                e.Property(k => k.Quantily);
                e.Property(k => k.ImgPath).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.IdProducer);
            });
            modelBuilder.Entity<Reply>(e =>
            {
                e.ToTable("Reply");
                e.HasKey(k => k.ShopIduser2);
                e.Property(k => k.ContentReply).HasMaxLength(500).HasColumnType("varchar");
                e.Property(k => k.CommentIdcmt);
            });
            modelBuilder.Entity<Size>(e =>
            {
                e.ToTable("Size");
                e.HasKey(k => k.Idsize);

                e.Property(k => k.Size1);
            });
            modelBuilder.Entity<SizeDetail>(e =>
            {
                e.ToTable("SizeDetail");
                e.HasKey(k => k.SizeIdsize);
                e.Property(k => k.ProductIdproduct);
            });
            modelBuilder.Entity<Voucher>(e =>
            {
                e.ToTable("Voucher");
                e.HasKey(k => k.Idvoucher);
                e.Property(k => k.Namevc).HasMaxLength(200).HasColumnType("varchar");
                e.Property(k => k.Expiry).HasDefaultValue(DateTime.Now).HasColumnType("date");

            });

        }

        internal void SaveChanges()
        {
            throw new NotImplementedException();
        }

        internal Task SaveChangesAsync()
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}

