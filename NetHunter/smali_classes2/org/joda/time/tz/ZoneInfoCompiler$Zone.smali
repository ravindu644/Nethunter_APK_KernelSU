.class Lorg/joda/time/tz/ZoneInfoCompiler$Zone;
.super Ljava/lang/Object;
.source "ZoneInfoCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/ZoneInfoCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Zone"
.end annotation


# instance fields
.field public final iFormat:Ljava/lang/String;

.field public final iName:Ljava/lang/String;

.field private iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

.field public final iOffsetMillis:I

.field public final iRules:Ljava/lang/String;

.field public final iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

.field public final iUntilYear:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseTime(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->getStartOfYear()Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-direct {p1, p2}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;-><init>(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :cond_1
    :goto_0
    iput v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    return-void
.end method

.method constructor <init>(Ljava/util/StringTokenizer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V

    return-void
.end method

.method private static addToBuilder(Lorg/joda/time/tz/ZoneInfoCompiler$Zone;Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/tz/ZoneInfoCompiler$Zone;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;)V"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_3

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseTime(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {p1, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;->addRecurring(Lorg/joda/time/tz/DateTimeZoneBuilder;ILjava/lang/String;)V

    :goto_1
    iget v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-virtual {v1, p1, v0}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;->addCutover(Lorg/joda/time/tz/DateTimeZoneBuilder;I)V

    iget-object p0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Rules not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addToBuilder(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/tz/DateTimeZoneBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/tz/ZoneInfoCompiler$RuleSet;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->addToBuilder(Lorg/joda/time/tz/ZoneInfoCompiler$Zone;Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/util/Map;)V

    return-void
.end method

.method chain(Ljava/util/StringTokenizer;)V
    .locals 2

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->chain(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;-><init>(Ljava/lang/String;Ljava/util/StringTokenizer;)V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Zone]\nName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOffsetMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nRules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nUntilYear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iUntilDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "...\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->iNext:Lorg/joda/time/tz/ZoneInfoCompiler$Zone;

    invoke-virtual {v0}, Lorg/joda/time/tz/ZoneInfoCompiler$Zone;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
