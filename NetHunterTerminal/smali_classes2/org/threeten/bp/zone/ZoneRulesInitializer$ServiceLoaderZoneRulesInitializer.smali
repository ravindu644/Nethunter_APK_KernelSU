.class Lorg/threeten/bp/zone/ZoneRulesInitializer$ServiceLoaderZoneRulesInitializer;
.super Lorg/threeten/bp/zone/ZoneRulesInitializer;
.source "ZoneRulesInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRulesInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceLoaderZoneRulesInitializer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeProviders()V
    .locals 3

    const-class v0, Lorg/threeten/bp/zone/ZoneRulesProvider;

    const-class v1, Lorg/threeten/bp/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/ZoneRulesProvider;

    :try_start_0
    invoke-static {v1}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    return-void
.end method
