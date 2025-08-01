.class public final Lorg/threeten/bp/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;


# instance fields
.field private final chrono:Lorg/threeten/bp/chrono/Chronology;

.field private final decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v2, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v6, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v6, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v6, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v6, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v6, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v7, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v7, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v8, 0x0

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v8, v9, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v7, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    sget-object v8, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v7, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v7

    sput-object v7, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v7, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    sget-object v8, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v7, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v7

    sput-object v7, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v7, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v7, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v7}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v7, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v7, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v7, 0x5b

    invoke-virtual {v2, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v8, 0x5d

    invoke-virtual {v2, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v9, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sget-object v9, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v2, v9}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v7, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v2, v3, v4, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v7, 0x3

    invoke-virtual {v0, v2, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    sget-object v7, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v2, v3, v4, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v2, "-W"

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_WEEK_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInstant()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "+HHMMss"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->BASIC_ISO_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Mon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Tue"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "Wed"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Thu"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Fri"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v11, 0x6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "Sat"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v11, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v13, "Jan"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Feb"

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Mar"

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Apr"

    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "May"

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Jun"

    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Jul"

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Aug"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Sep"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Oct"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0xb

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Nov"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Dec"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseLenient()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1, v2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v2, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v1, v10, v5, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v12}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "+HHMM"

    const-string v2, "GMT"

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$1;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatter$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$2;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatter$2;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/DecimalStyle;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;",
            "Lorg/threeten/bp/chrono/Chronology;",
            "Lorg/threeten/bp/ZoneId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "printerParser"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    const-string p1, "locale"

    invoke-static {p2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    const-string p1, "decimalStyle"

    invoke-static {p3, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/format/DecimalStyle;

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    const-string p1, "resolverStyle"

    invoke-static {p4, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/format/ResolverStyle;

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iput-object p5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iput-object p6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iput-object p7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object p0

    return-object p0
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' could not be parsed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1, p2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method public static ofLocalizedDate(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2

    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofLocalizedDateTime(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofLocalizedDateTime(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofLocalizedTime(Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 2

    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method private parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->toBuilder()Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v2, 0x40

    if-le p2, v2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-string v2, "Text \'"

    if-ltz v0, :cond_4

    new-instance v0, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be parsed at index "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_4
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "position"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/DateTimeParseContext;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseContext;->toParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object p1

    return-object p1
.end method

.method public static final parsedExcessDays()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/Period;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->formatTo(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatTo(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .locals 2

    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appendable"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lorg/threeten/bp/format/DateTimePrintContext;

    invoke-direct {v0, p1, p0}, Lorg/threeten/bp/format/DateTimePrintContext;-><init>(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)V

    instance-of p1, p2, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v1, v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/threeten/bp/DateTimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Lorg/threeten/bp/format/ResolverStyle;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/threeten/bp/format/DateTimeBuilder;->build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "position"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {p2, v0, v1}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Lorg/threeten/bp/temporal/TemporalQuery;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "*>;)",
            "Lorg/threeten/bp/temporal/TemporalAccessor;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "types"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/temporal/TemporalAccessor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert parsed text to any specified type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lorg/threeten/bp/format/DateTimeParseException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least two types must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object p1

    return-object p1
.end method

.method public toFormat()Ljava/text/Format;
    .locals 2

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;Lorg/threeten/bp/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/text/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;-><init>(Lorg/threeten/bp/format/DateTimeFormatter;Lorg/threeten/bp/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public withChronology(Lorg/threeten/bp/chrono/Chronology;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public withDecimalStyle(Lorg/threeten/bp/format/DecimalStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public withResolverFields(Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatter;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object p1
.end method

.method public varargs withResolverFields([Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object p1
.end method

.method public withResolverStyle(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatter;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter;->decimalStyle:Lorg/threeten/bp/format/DecimalStyle;

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverStyle:Lorg/threeten/bp/format/ResolverStyle;

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatter;->chrono:Lorg/threeten/bp/chrono/Chronology;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method
