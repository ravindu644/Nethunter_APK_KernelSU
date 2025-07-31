.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneName"
.end annotation


# static fields
.field static final LONG_NAME:I = 0x0

.field static final SHORT_NAME:I = 0x1


# instance fields
.field private final iParseLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private final iType:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    return-void
.end method

.method private print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getShortName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 2

    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public estimatePrintedLength()I
    .locals 2

    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 6

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->getDefaultTimeZoneNames()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/DateTimeZone;

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setZone(Lorg/joda/time/DateTimeZone;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_4
    not-int p1, p3

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long p4, p5

    sub-long/2addr p2, p4

    invoke-direct {p0, p2, p3, p6, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
