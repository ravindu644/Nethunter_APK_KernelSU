.class final Lorg/joda/time/tz/CachedDateTimeZone$Info;
.super Ljava/lang/Object;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/CachedDateTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Info"
.end annotation


# instance fields
.field private iNameKey:Ljava/lang/String;

.field iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private iOffset:I

.field public final iPeriodStart:J

.field private iStandardOffset:I

.field public final iZoneRef:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    iput-wide p2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    return-void
.end method


# virtual methods
.method public getNameKey(J)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    return-object p1
.end method

.method public getOffset(J)I
    .locals 4

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result p1

    iput p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    :cond_2
    iget p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    return p1
.end method

.method public getStandardOffset(J)I
    .locals 4

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result p1

    iput p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    :cond_2
    iget p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    return p1
.end method
