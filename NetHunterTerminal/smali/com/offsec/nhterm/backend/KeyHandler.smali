.class public final Lcom/offsec/nhterm/backend/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# static fields
.field public static final KEYMOD_ALT:I = -0x80000000

.field public static final KEYMOD_CTRL:I = 0x40000000

.field public static final KEYMOD_NUM_LOCK:I = 0x10000000

.field public static final KEYMOD_SHIFT:I = 0x20000000

.field private static final TERMCAP_TO_KEYCODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nhterm/backend/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    const v1, 0x20000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k;"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "K1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "K3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "K4"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "K5"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ku"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x2000003d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kB"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kD"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x20000014

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kDN"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kF"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x7c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kI"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "kN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "kR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kUP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "@7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "@8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(IIZZ)Ljava/lang/String;
    .locals 17

    move/from16 v0, p0

    const/high16 v1, 0x10000000

    and-int v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, -0x10000001

    and-int v2, p1, v2

    const/4 v3, 0x4

    const-string v4, "\u001b"

    if-eq v0, v3, :cond_45

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_43

    const/16 v3, 0x3e

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eq v0, v3, :cond_41

    const/high16 v3, -0x80000000

    const-string v7, "\r"

    const/16 v8, 0x42

    if-eq v0, v8, :cond_3f

    const/16 v9, 0x43

    if-eq v0, v9, :cond_3c

    const/16 v3, 0x5c

    const-string v5, "\u001b[5~"

    if-eq v0, v3, :cond_3b

    const/16 v3, 0x5d

    const-string v10, "\u001b[6~"

    if-eq v0, v3, :cond_3a

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_45

    const-string v4, "\u001b[3"

    const/16 v11, 0x70

    const/16 v12, 0x7e

    if-eq v0, v11, :cond_39

    const-string v13, "\u001b[A"

    const/16 v15, 0x41

    const-string v11, "\u001b[1"

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0x48

    const-string v8, "\u001b[2"

    packed-switch v0, :pswitch_data_1

    const-string v16, "\u001bOP"

    const-string v14, "\u001bO"

    packed-switch v0, :pswitch_data_2

    return-object v6

    :pswitch_0
    if-eqz p3, :cond_1

    const/16 v0, 0x58

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "="

    :goto_1
    return-object v0

    :pswitch_1
    if-eqz p3, :cond_2

    const/16 v0, 0x4d

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "\n"

    :goto_2
    return-object v0

    :pswitch_2
    const-string v0, ","

    return-object v0

    :pswitch_3
    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    const-string v0, "\u001bOn"

    goto :goto_3

    :cond_3
    const-string v0, "."

    :goto_3
    return-object v0

    :cond_4
    invoke-static {v4, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    if-eqz p3, :cond_5

    const/16 v0, 0x6b

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string v0, "+"

    :goto_4
    return-object v0

    :pswitch_5
    if-eqz p3, :cond_6

    const/16 v0, 0x6d

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    const-string v0, "-"

    :goto_5
    return-object v0

    :pswitch_6
    if-eqz p3, :cond_7

    const/16 v0, 0x6a

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    const-string v0, "*"

    :goto_6
    return-object v0

    :pswitch_7
    if-eqz p3, :cond_8

    invoke-static {v14, v2, v3}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_8
    const-string v0, "/"

    :goto_7
    return-object v0

    :pswitch_8
    if-eqz v1, :cond_a

    if-eqz p3, :cond_9

    const/16 v0, 0x79

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_9
    const-string v0, "9"

    :goto_8
    return-object v0

    :cond_a
    return-object v5

    :pswitch_9
    if-eqz v1, :cond_c

    if-eqz p3, :cond_b

    const/16 v0, 0x78

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    const-string v0, "8"

    :goto_9
    return-object v0

    :cond_c
    if-nez v2, :cond_d

    if-eqz p2, :cond_e

    const-string v13, "\u001bOA"

    goto :goto_a

    :cond_d
    invoke-static {v11, v2, v15}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v13

    :cond_e
    :goto_a
    return-object v13

    :pswitch_a
    if-eqz v1, :cond_10

    if-eqz p3, :cond_f

    const/16 v0, 0x77

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_f
    const-string v0, "7"

    :goto_b
    return-object v0

    :cond_10
    if-nez v2, :cond_12

    if-eqz p2, :cond_11

    const-string v0, "\u001bOH"

    goto :goto_c

    :cond_11
    const-string v0, "\u001b[H"

    goto :goto_c

    :cond_12
    invoke-static {v11, v2, v7}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_b
    if-eqz v1, :cond_14

    if-eqz p3, :cond_13

    const/16 v0, 0x76

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_13
    const-string v0, "6"

    :goto_d
    return-object v0

    :cond_14
    if-nez v2, :cond_16

    if-eqz p2, :cond_15

    const-string v0, "\u001bOC"

    goto :goto_e

    :cond_15
    const-string v0, "\u001b[C"

    goto :goto_e

    :cond_16
    invoke-static {v11, v2, v9}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_c
    if-eqz p3, :cond_17

    const/16 v0, 0x75

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_17
    const-string v0, "5"

    :goto_f
    return-object v0

    :pswitch_d
    if-eqz v1, :cond_19

    if-eqz p3, :cond_18

    const/16 v0, 0x74

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_18
    const-string v0, "4"

    :goto_10
    return-object v0

    :cond_19
    if-nez v2, :cond_1b

    if-eqz p2, :cond_1a

    const-string v0, "\u001bOD"

    goto :goto_11

    :cond_1a
    const-string v0, "\u001b[D"

    goto :goto_11

    :cond_1b
    const/16 v0, 0x44

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_e
    if-eqz v1, :cond_1d

    if-eqz p3, :cond_1c

    const/16 v0, 0x73

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1c
    const-string v0, "3"

    :goto_12
    return-object v0

    :cond_1d
    return-object v10

    :pswitch_f
    if-eqz v1, :cond_1f

    if-eqz p3, :cond_1e

    const/16 v0, 0x72

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1e
    const-string v0, "2"

    :goto_13
    return-object v0

    :cond_1f
    if-nez v2, :cond_21

    if-eqz p2, :cond_20

    const-string v0, "\u001bOB"

    goto :goto_14

    :cond_20
    const-string v0, "\u001b[B"

    goto :goto_14

    :cond_21
    const/16 v0, 0x42

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :pswitch_10
    if-eqz v1, :cond_23

    if-eqz p3, :cond_22

    const/16 v0, 0x71

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_22
    const-string v0, "1"

    :goto_15
    return-object v0

    :cond_23
    if-nez v2, :cond_25

    if-eqz p2, :cond_24

    const-string v0, "\u001bOF"

    goto :goto_16

    :cond_24
    const-string v0, "\u001b[F"

    goto :goto_16

    :cond_25
    const/16 v0, 0x46

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :pswitch_11
    if-eqz v1, :cond_27

    if-eqz p3, :cond_26

    const/16 v0, 0x70

    invoke-static {v14, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_26
    const-string v0, "0"

    :goto_17
    return-object v0

    :cond_27
    invoke-static {v8, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12
    if-eqz p3, :cond_28

    return-object v16

    :cond_28
    return-object v6

    :pswitch_13
    const-string v0, "\u001b[24"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14
    const-string v0, "\u001b[23"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "\u001b[21"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_16
    const-string v0, "\u001b[20"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17
    const-string v0, "\u001b[19"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string v0, "\u001b[18"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19
    const-string v0, "\u001b[17"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    const-string v0, "\u001b[15"

    invoke-static {v0, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b
    if-nez v2, :cond_29

    const-string v0, "\u001bOS"

    goto :goto_18

    :cond_29
    const/16 v0, 0x53

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_1c
    if-nez v2, :cond_2a

    const-string v0, "\u001bOR"

    goto :goto_19

    :cond_2a
    const/16 v0, 0x52

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :pswitch_1d
    if-nez v2, :cond_2b

    const-string v0, "\u001bOQ"

    goto :goto_1a

    :cond_2b
    const/16 v0, 0x51

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1e
    if-nez v2, :cond_2c

    goto :goto_1b

    :cond_2c
    const/16 v0, 0x50

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v16

    :goto_1b
    return-object v16

    :pswitch_1f
    invoke-static {v8, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_20
    if-nez v2, :cond_2e

    if-eqz p2, :cond_2d

    const-string v0, "\u001bOF"

    goto :goto_1c

    :cond_2d
    const-string v0, "\u001b[F"

    goto :goto_1c

    :cond_2e
    const/16 v0, 0x46

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :pswitch_21
    if-nez v2, :cond_30

    if-eqz p2, :cond_2f

    const-string v0, "\u001bOH"

    goto :goto_1d

    :cond_2f
    const-string v0, "\u001b[H"

    goto :goto_1d

    :cond_30
    invoke-static {v11, v2, v7}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :pswitch_22
    const-string v0, "\u001b[34~"

    return-object v0

    :pswitch_23
    const-string v0, "\u001b[32~"

    return-object v0

    :pswitch_24
    return-object v7

    :pswitch_25
    if-nez v2, :cond_32

    if-eqz p2, :cond_31

    const-string v0, "\u001bOC"

    goto :goto_1e

    :cond_31
    const-string v0, "\u001b[C"

    goto :goto_1e

    :cond_32
    invoke-static {v11, v2, v9}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :pswitch_26
    if-nez v2, :cond_34

    if-eqz p2, :cond_33

    const-string v0, "\u001bOD"

    goto :goto_1f

    :cond_33
    const-string v0, "\u001b[D"

    goto :goto_1f

    :cond_34
    const/16 v0, 0x44

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :pswitch_27
    if-nez v2, :cond_36

    if-eqz p2, :cond_35

    const-string v0, "\u001bOB"

    goto :goto_20

    :cond_35
    const-string v0, "\u001b[B"

    goto :goto_20

    :cond_36
    const/16 v0, 0x42

    invoke-static {v11, v2, v0}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :pswitch_28
    if-nez v2, :cond_37

    if-eqz p2, :cond_38

    const-string v13, "\u001bOA"

    goto :goto_21

    :cond_37
    invoke-static {v11, v2, v15}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v13

    :cond_38
    :goto_21
    return-object v13

    :cond_39
    invoke-static {v4, v2, v12}, Lcom/offsec/nhterm/backend/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    return-object v10

    :cond_3b
    return-object v5

    :cond_3c
    and-int v0, v2, v3

    if-nez v0, :cond_3d

    const-string v4, ""

    :cond_3d
    and-int v0, v2, v5

    if-nez v0, :cond_3e

    const-string/jumbo v0, "\u007f"

    goto :goto_22

    :cond_3e
    const-string v0, "\u0008"

    :goto_22
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    and-int v0, v2, v3

    if-nez v0, :cond_40

    goto :goto_23

    :cond_40
    const-string v7, "\u001b\r"

    :goto_23
    return-object v7

    :cond_41
    and-int v0, v2, v5

    if-nez v0, :cond_42

    goto :goto_24

    :cond_42
    const-string v6, "\u0000"

    :goto_24
    return-object v6

    :cond_43
    const/high16 v0, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    const-string v0, "\t"

    goto :goto_25

    :cond_44
    const-string v0, "\u001b[Z"

    :goto_25
    return-object v0

    :cond_45
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x83
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/offsec/nhterm/backend/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-eqz v1, :cond_1

    const v1, -0x20000001

    and-int/2addr p0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    and-int v2, p0, v1

    if-eqz v2, :cond_2

    or-int/2addr v0, v1

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p0, v1

    :cond_2
    const/high16 v1, -0x80000000

    and-int v2, p0, v1

    if-eqz v2, :cond_3

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    :cond_3
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-eqz v2, :cond_4

    or-int/2addr v0, v1

    const v1, -0x10000001

    and-int/2addr p0, v1

    :cond_4
    invoke-static {p0, v0, p1, p2}, Lcom/offsec/nhterm/backend/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/high16 v0, -0x60000000

    if-eq p1, v0, :cond_5

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_4

    const/high16 v0, -0x20000000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
