.class final Lorg/joda/time/convert/ConverterManager$LazyConverterManagerHolder;
.super Ljava/lang/Object;
.source "ConverterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/convert/ConverterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyConverterManagerHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ConverterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/convert/ConverterManager;

    invoke-direct {v0}, Lorg/joda/time/convert/ConverterManager;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ConverterManager$LazyConverterManagerHolder;->INSTANCE:Lorg/joda/time/convert/ConverterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
