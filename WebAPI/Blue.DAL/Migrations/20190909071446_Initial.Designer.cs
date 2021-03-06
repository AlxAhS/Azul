// <auto-generated />
using System;
using Blue.DAL;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace Blue.DAL.Migrations
{
    [DbContext(typeof(BlueDBContext))]
    [Migration("20190909071446_Initial")]
    partial class Initial
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.6-servicing-10079")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Blue.DAL.Appointment", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("AppointmentType")
                        .IsRequired()
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("ConsultingRoom")
                        .IsRequired()
                        .HasColumnType("nvarchar(5)");

                    b.Property<DateTime>("Date")
                        .HasColumnType("smalldatetime");

                    b.Property<int>("Doctor")
                        .HasColumnType("int");

                    b.Property<DateTime>("Hour")
                        .HasColumnType("smalldatetime");

                    b.Property<int>("Patient")
                        .HasColumnType("int");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("ID");

                    b.ToTable("Appointment");
                });

            modelBuilder.Entity("Blue.DAL.ClinicHistory", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abdomen")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("AnalisisPlan")
                        .IsRequired()
                        .HasColumnType("nvarchar(800)");

                    b.Property<string>("CardioPulmonar")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Diagnostic")
                        .IsRequired()
                        .HasColumnType("nvarchar(800)");

                    b.Property<string>("GenitoUrinary")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("HeadandShoulder")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("NeurologicalStatus")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("PatientID")
                        .IsRequired()
                        .HasColumnType("nvarchar(15)");

                    b.HasKey("ID");

                    b.ToTable("ClinicHistory");
                });

            modelBuilder.Entity("Blue.DAL.ConsultingRoom", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(3)");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("ID");

                    b.ToTable("ConsultingRoom");
                });

            modelBuilder.Entity("Blue.DAL.Doctor", b =>
                {
                    b.Property<int>("Code")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("IDNumber")
                        .IsRequired()
                        .HasColumnType("nvarchar(15)");

                    b.Property<string>("Mail")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("MobilePhone")
                        .HasColumnType("nvarchar(15)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("Code");

                    b.ToTable("Doctor");
                });

            modelBuilder.Entity("Blue.DAL.Evolution", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("HistoryID")
                        .HasColumnType("int");

                    b.HasKey("ID");

                    b.ToTable("Evolution");
                });

            modelBuilder.Entity("Blue.DAL.EvolutionDetail", b =>
                {
                    b.Property<int>("DetailID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Analisis")
                        .IsRequired()
                        .HasColumnType("nvarchar(800)");

                    b.Property<string>("Diagnose")
                        .IsRequired()
                        .HasColumnType("nvarchar(800)");

                    b.Property<int>("EvolutionID")
                        .HasColumnType("int");

                    b.Property<string>("Justification")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Objetive")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Subjetive")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Temperature")
                        .IsRequired()
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("DetailID");

                    b.ToTable("EvolutionDetail");
                });

            modelBuilder.Entity("Blue.DAL.HistoryDetail", b =>
                {
                    b.Property<int>("DetailID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CurrentDisease")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<DateTime>("Fecha")
                        .HasColumnType("smalldatetime");

                    b.Property<int>("HistoryID")
                        .HasColumnType("int");

                    b.Property<string>("Reason")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("DetailID");

                    b.ToTable("HistoryDetail");
                });

            modelBuilder.Entity("Blue.DAL.Module", b =>
                {
                    b.Property<int>("Code")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Image")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Code");

                    b.ToTable("Module");
                });

            modelBuilder.Entity("Blue.DAL.Order", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Appointment")
                        .HasColumnType("int");

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasColumnType("nvarchar(20)");

                    b.HasKey("ID");

                    b.ToTable("Order");
                });

            modelBuilder.Entity("Blue.DAL.Patient", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("nvarchar(15)");

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(150)");

                    b.Property<string>("AfiliationType")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<DateTime>("DOB")
                        .HasColumnType("smalldatetime");

                    b.Property<string>("Insurance")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("Mail")
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("MobilePhone")
                        .HasColumnType("nvarchar(15)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Occupation")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("Religion")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("Sex")
                        .IsRequired()
                        .HasColumnType("nvarchar(1)");

                    b.Property<string>("TypeID")
                        .IsRequired()
                        .HasColumnType("nvarchar(2)");

                    b.HasKey("ID");

                    b.ToTable("Patient");
                });

            modelBuilder.Entity("Blue.DAL.PhysicalExam", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Abdomen")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("ArterialPresure")
                        .IsRequired()
                        .HasColumnType("nvarchar(6)");

                    b.Property<string>("BreathingFrequency")
                        .IsRequired()
                        .HasColumnType("nvarchar(3)");

                    b.Property<int>("DetailID")
                        .HasColumnType("int");

                    b.Property<string>("GenitoUrinary")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("HeadandShoulder")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("HearthFrequency")
                        .IsRequired()
                        .HasColumnType("nvarchar(3)");

                    b.Property<string>("Height")
                        .IsRequired()
                        .HasColumnType("nvarchar(4)");

                    b.Property<string>("Limbs")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("NeurologicalStatus")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("O2SAT")
                        .IsRequired()
                        .HasColumnType("nvarchar(3)");

                    b.Property<string>("PulmonaryCardio")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Skin")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Temperature")
                        .IsRequired()
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("Weight")
                        .IsRequired()
                        .HasColumnType("nvarchar(3)");

                    b.HasKey("ID");

                    b.ToTable("PhysicalExam");
                });

            modelBuilder.Entity("Blue.DAL.Role", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(20)");

                    b.HasKey("ID");

                    b.ToTable("Role");
                });

            modelBuilder.Entity("Blue.DAL.User", b =>
                {
                    b.Property<string>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int>("Role")
                        .HasColumnType("int");

                    b.HasKey("ID");

                    b.ToTable("User");
                });
#pragma warning restore 612, 618
        }
    }
}
