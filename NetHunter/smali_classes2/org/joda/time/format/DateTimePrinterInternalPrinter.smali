.class Lorg/joda/time/format/DateTimePrinterInternalPrinter;
.super Ljava/lang/Object;
.source "DateTimePrinterInternalPrinter.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;


# instance fields
.field private final underlying:Lorg/joda/time/format/DateTimePrinter;


# direct methods
.method private constructor <init>(Lorg/joda/time/format/DateTimePrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    return-void
.end method

.method static of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;
    .locals 1

    instance-of v0, p0, Lorg/joda/time/format/InternalPrinterDateTimePrinter;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/joda/time/format/InternalPrinter;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;

    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;-><init>(Lorg/joda/time/format/DateTimePrinter;)V

    return-object v0
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0}, Lorg/joda/time/format/DateTimePrinter;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method getUnderlying()Lorg/joda/time/format/DateTimePrinter;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    return-object v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    instance-of v2, v1, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-wide v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/io/Writer;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Ljava/io/Writer;

    iget-object v3, v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-wide v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v5, v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-object v6, v2

    move-wide v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/Writer;

    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v1, v0, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method
