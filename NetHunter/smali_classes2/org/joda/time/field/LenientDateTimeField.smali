.class public Lorg/joda/time/field/LenientDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "LenientDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x78eea6e34c1db467L


# instance fields
.field private final iBase:Lorg/joda/time/Chronology;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    iput-object p2, p0, Lorg/joda/time/field/LenientDateTimeField;->iBase:Lorg/joda/time/Chronology;

    return-void
.end method

.method public static getInstance(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/joda/time/field/StrictDateTimeField;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/joda/time/field/StrictDateTimeField;

    invoke-virtual {p0}, Lorg/joda/time/field/StrictDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTimeField;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lorg/joda/time/field/LenientDateTimeField;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/field/LenientDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)V

    return-object v0
.end method


# virtual methods
.method public final isLenient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public set(JI)J
    .locals 10

    iget-object v0, p0, Lorg/joda/time/field/LenientDateTimeField;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    int-to-long v2, p3

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/LenientDateTimeField;->get(J)I

    move-result p3

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/field/LenientDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    iget-object v4, p0, Lorg/joda/time/field/LenientDateTimeField;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v4}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, v0, v1, v2, v3}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v5

    iget-object p3, p0, Lorg/joda/time/field/LenientDateTimeField;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-virtual/range {v4 .. v9}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide p1

    return-wide p1
.end method
