.class public final Lorg/joda/time/field/MillisDurationField;
.super Lorg/joda/time/DurationField;
.source "MillisDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x24de85b89b81f517L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/field/MillisDurationField;

    invoke-direct {v0}, Lorg/joda/time/field/MillisDurationField;-><init>()V

    sput-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 2

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/MillisDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 4

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/joda/time/field/MillisDurationField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    check-cast p1, Lorg/joda/time/field/MillisDurationField;

    invoke-virtual {p1}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDifference(JJ)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 0

    int-to-long p1, p1

    return-wide p1
.end method

.method public getMillis(J)J
    .locals 0

    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 0

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "millis"

    return-object v0
.end method

.method public getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public final getUnitMillis()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getValue(J)I
    .locals 0

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValue(JJ)I
    .locals 0

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValueAsLong(J)J
    .locals 0

    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .locals 0

    return-wide p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final isPrecise()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DurationField[millis]"

    return-object v0
.end method
