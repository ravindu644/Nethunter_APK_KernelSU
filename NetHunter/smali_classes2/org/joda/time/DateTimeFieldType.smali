.class public abstract Lorg/joda/time/DateTimeFieldType;
.super Ljava/lang/Object;
.source "DateTimeFieldType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;
    }
.end annotation


# static fields
.field static final CENTURY_OF_ERA:B = 0x3t

.field private static final CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final CLOCKHOUR_OF_DAY:B = 0x10t

.field private static final CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final CLOCKHOUR_OF_HALFDAY:B = 0xft

.field private static final CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_MONTH:B = 0x8t

.field private static final DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_WEEK:B = 0xct

.field private static final DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final DAY_OF_YEAR:B = 0x6t

.field private static final DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final ERA:B = 0x1t

.field private static final ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HALFDAY_OF_DAY:B = 0xdt

.field private static final HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HOUR_OF_DAY:B = 0x11t

.field private static final HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final HOUR_OF_HALFDAY:B = 0xet

.field private static final HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MILLIS_OF_DAY:B = 0x16t

.field private static final MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MILLIS_OF_SECOND:B = 0x17t

.field private static final MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MINUTE_OF_DAY:B = 0x12t

.field private static final MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MINUTE_OF_HOUR:B = 0x13t

.field private static final MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final MONTH_OF_YEAR:B = 0x7t

.field private static final MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final SECOND_OF_DAY:B = 0x14t

.field private static final SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final SECOND_OF_MINUTE:B = 0x15t

.field private static final SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final WEEKYEAR:B = 0xat

.field static final WEEKYEAR_OF_CENTURY:B = 0x9t

.field private static final WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final WEEK_OF_WEEKYEAR:B = 0xbt

.field private static final WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final YEAR:B = 0x5t

.field static final YEAR_OF_CENTURY:B = 0x4t

.field private static final YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

.field static final YEAR_OF_ERA:B = 0x2t

.field private static final YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

.field private static final serialVersionUID:J = -0x26c224fb83e6L


# instance fields
.field private final iName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-string v2, "era"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "yearOfEra"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "centuryOfEra"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "yearOfCentury"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const/4 v1, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "year"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "dayOfYear"

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "monthOfYear"

    const/4 v5, 0x7

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "dayOfMonth"

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "weekyearOfCentury"

    const/16 v5, 0x9

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    const/16 v1, 0xa

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "weekyear"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "weekOfWeekyear"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "dayOfWeek"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "halfdayOfDay"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "hourOfHalfday"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "clockhourOfHalfday"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "clockhourOfDay"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "hourOfDay"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "minuteOfDay"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "minuteOfHour"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "secondOfDay"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "secondOfMinute"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "millisOfDay"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    const-string v3, "millisOfSecond"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$1900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$2200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method static synthetic access$900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static centuryOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CENTURY_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static clockhourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->CLOCKHOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfMonth()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_MONTH_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfWeek()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_WEEK_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static dayOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->DAY_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static era()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static halfdayOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HALFDAY_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static hourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static hourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->HOUR_OF_HALFDAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static millisOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static millisOfSecond()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MILLIS_OF_SECOND_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static minuteOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static minuteOfHour()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MINUTE_OF_HOUR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static monthOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->MONTH_OF_YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static secondOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_DAY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static secondOfMinute()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->SECOND_OF_MINUTE_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEK_OF_WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->WEEKYEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static year()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static yearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_CENTURY_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public static yearOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/DateTimeFieldType;->YEAR_OF_ERA_TYPE:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method


# virtual methods
.method public abstract getDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public abstract getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRangeDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public isSupported(Lorg/joda/time/Chronology;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
