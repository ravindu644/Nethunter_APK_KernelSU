.class synthetic Lorg/threeten/bp/Instant$2;
.super Ljava/lang/Object;
.source "Instant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$threeten$bp$temporal$ChronoField:[I

.field static final synthetic $SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lorg/threeten/bp/temporal/ChronoUnit;->values()[Lorg/threeten/bp/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v3}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v4}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lorg/threeten/bp/temporal/ChronoField;->values()[Lorg/threeten/bp/temporal/ChronoField;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    :try_start_8
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
