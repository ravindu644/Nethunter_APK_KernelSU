.class Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StyleFormatter"
.end annotation


# static fields
.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iDateStyle:I

.field private final iTimeStyle:I

.field private final iType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iput p2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    iput p3, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    return-void
.end method

.method private getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    iget v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iget v3, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;-><init>(IIILjava/util/Locale;)V

    sget-object v1, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/format/DateTimeFormatter;

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/joda/time/format/DateTimeFormatter;

    if-eqz p1, :cond_1

    move-object v2, p1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method getPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, v1, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No datetime pattern for locale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getParser0()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p7

    invoke-direct {p0, v8}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v8}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    return-void
.end method
