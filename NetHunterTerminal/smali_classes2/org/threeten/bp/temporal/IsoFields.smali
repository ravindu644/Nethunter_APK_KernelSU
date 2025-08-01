.class public final Lorg/threeten/bp/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/temporal/IsoFields$Unit;,
        Lorg/threeten/bp/temporal/IsoFields$Field;
    }
.end annotation


# static fields
.field public static final DAY_OF_QUARTER:Lorg/threeten/bp/temporal/TemporalField;

.field public static final QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

.field public static final QUARTER_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

.field public static final WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

.field public static final WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

.field public static final WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/TemporalField;

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
