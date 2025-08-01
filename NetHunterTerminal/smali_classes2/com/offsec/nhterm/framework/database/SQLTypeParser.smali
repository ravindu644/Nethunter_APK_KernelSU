.class public Lcom/offsec/nhterm/framework/database/SQLTypeParser;
.super Ljava/lang/Object;
.source "SQLTypeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataType(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/offsec/nhterm/framework/database/DatabaseDataType;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->TEXT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_1

    goto :goto_4

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_2

    goto :goto_3

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_8

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_6

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->INTEGER:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0

    :cond_7
    :goto_1
    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->DOUBLE:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->BIGINT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0

    :cond_9
    :goto_3
    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->FLOAT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0

    :cond_a
    :goto_4
    sget-object p0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->INTEGER:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    return-object p0
.end method

.method public static getDataType(Ljava/lang/reflect/Field;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->TEXT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_f

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    goto :goto_7

    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_b

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_4

    goto :goto_5

    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_1
    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->INTEGER:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->DOUBLE:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_5
    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->BIGINT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_7
    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->FLOAT:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_9
    sget-object v0, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->INTEGER:Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    const-class v1, Lcom/offsec/nhterm/framework/database/annotation/NotNull;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0, v2}, Lcom/offsec/nhterm/framework/database/DatabaseDataType;->nullable(Z)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    return-object p0
.end method

.method public static isIgnore(Ljava/lang/reflect/Field;)Z
    .locals 1

    const-class v0, Lcom/offsec/nhterm/framework/database/annotation/Ignore;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static matchType(Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object p0

    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
