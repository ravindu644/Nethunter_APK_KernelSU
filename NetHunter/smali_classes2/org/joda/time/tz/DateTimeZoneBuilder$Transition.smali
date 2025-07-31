.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transition"
.end annotation


# instance fields
.field private final iMillis:J

.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method constructor <init>(JLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iput p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getNameKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result p1

    add-int/2addr p1, p4

    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    iget-object p1, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget p1, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget p1, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    return-wide v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveMillis()I
    .locals 2

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset()I
    .locals 1

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return v0
.end method

.method public getWallOffset()I
    .locals 1

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    return v0
.end method

.method public isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    iget-wide v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget-object p1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/joda/time/DateTime;

    iget-wide v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    sget-object v4, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMillis(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 7

    new-instance v6, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget-object v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    return-object v6
.end method
