.class public final Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;
.super Lcom/offsec/nhterm/component/config/NeoConfigureFile;
.source "loaders.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OldExtraKeysConfigureFile"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nloaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 loaders.kt\ncom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,195:1\n1858#2,3:196\n1858#2,3:199\n*S KotlinDebug\n*F\n+ 1 loaders.kt\ncom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile\n*L\n97#1:196,3\n104#1:199,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0094\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;",
        "Lcom/offsec/nhterm/component/config/NeoConfigureFile;",
        "configureFile",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "configVisitor",
        "Lio/neolang/frontend/ConfigVisitor;",
        "getConfigVisitor",
        "()Lio/neolang/frontend/ConfigVisitor;",
        "setConfigVisitor",
        "(Lio/neolang/frontend/ConfigVisitor;)V",
        "generateVisitor",
        "",
        "config",
        "Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;",
        "parseConfigure",
        "parseHeader",
        "",
        "line",
        "",
        "parseKeyDefine",
        "parseOldConfig",
        "source",
        "Ljava/io/BufferedReader;",
        "parseProgram",
        "parseWithDefault",
        "nhterm_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private configVisitor:Lio/neolang/frontend/ConfigVisitor;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configureFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/component/config/NeoConfigureFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private final generateVisitor(Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)Z
    .locals 8

    new-instance v0, Lio/neolang/frontend/ConfigVisitor;

    invoke-direct {v0}, Lio/neolang/frontend/ConfigVisitor;-><init>()V

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->setConfigVisitor(Lio/neolang/frontend/ConfigVisitor;)V

    invoke-virtual {p0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->getConfigVisitor()Lio/neolang/frontend/ConfigVisitor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->onStart()V

    const-string v1, "extra-key"

    invoke-virtual {v0, v1}, Lio/neolang/frontend/ConfigVisitor;->onEnterContext(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->getCurrentContext()Lio/neolang/runtime/NeoLangContext;

    move-result-object v1

    new-instance v2, Lio/neolang/runtime/NeoLangValue;

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    move-result-object v1

    new-instance v2, Lio/neolang/runtime/NeoLangValue;

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getWithDefaultKeys()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    const-string v3, "with-default"

    invoke-virtual {v1, v3, v2}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    const-string v1, "program"

    invoke-virtual {v0, v1}, Lio/neolang/frontend/ConfigVisitor;->onEnterContext(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->getCurrentContext()Lio/neolang/runtime/NeoLangContext;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lio/neolang/runtime/NeoLangValue;

    invoke-direct {v7, v4}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v7}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->onExitContext()V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lio/neolang/frontend/ConfigVisitor;->onEnterContext(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getShortcutKeys()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v1, Lcom/offsec/nhterm/frontend/session/view/extrakey/IExtraButton;

    instance-of v4, v1, Lcom/offsec/nhterm/frontend/session/view/extrakey/TextButton;

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/neolang/frontend/ConfigVisitor;->onEnterContext(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->getCurrentContext()Lio/neolang/runtime/NeoLangContext;

    move-result-object v2

    new-instance v4, Lio/neolang/runtime/NeoLangValue;

    move-object v5, v1

    check-cast v5, Lcom/offsec/nhterm/frontend/session/view/extrakey/TextButton;

    invoke-virtual {v5}, Lcom/offsec/nhterm/frontend/session/view/extrakey/TextButton;->getWithEnter()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    const-string v5, "with-enter"

    invoke-virtual {v2, v5, v4}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    move-result-object v2

    new-instance v4, Lio/neolang/runtime/NeoLangValue;

    invoke-virtual {v1}, Lcom/offsec/nhterm/frontend/session/view/extrakey/IExtraButton;->getButtonKeys()Lcom/offsec/nhterm/frontend/session/view/extrakey/CombinedSequence;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    const-string v5, "display"

    invoke-virtual {v2, v5, v4}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    move-result-object v2

    new-instance v4, Lio/neolang/runtime/NeoLangValue;

    invoke-virtual {v1}, Lcom/offsec/nhterm/frontend/session/view/extrakey/IExtraButton;->getButtonKeys()Lcom/offsec/nhterm/frontend/session/view/extrakey/CombinedSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v1}, Lio/neolang/runtime/NeoLangValue;-><init>(Ljava/lang/Object;)V

    const-string v1, "code"

    invoke-virtual {v2, v1, v4}, Lio/neolang/runtime/NeoLangContext;->defineAttribute(Ljava/lang/String;Lio/neolang/runtime/NeoLangValue;)Lio/neolang/runtime/NeoLangContext;

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->onExitContext()V

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->onExitContext()V

    invoke-virtual {v0}, Lio/neolang/frontend/ConfigVisitor;->onFinish()V

    const/4 p1, 0x1

    return p1
.end method

.method private final parseHeader(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2, p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->setVersion(I)V

    return-void

    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad version \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final parseKeyDefine(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V
    .locals 6

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string p1, " "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "true"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getShortcutKeys()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/offsec/nhterm/frontend/session/view/extrakey/TextButton;

    invoke-direct {v1, v0, p1}, Lcom/offsec/nhterm/frontend/session/view/extrakey/TextButton;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad define"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseOldConfig(Ljava/io/BufferedReader;)Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;
    .locals 6

    new-instance v0, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;

    invoke-direct {v0}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;-><init>()V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    const-string v2, "#"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "version"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseHeader(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V

    goto :goto_2

    :cond_2
    const-string v2, "program"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseProgram(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V

    goto :goto_2

    :cond_3
    const-string v2, "define"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseKeyDefine(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V

    goto :goto_2

    :cond_4
    const-string v2, "with-default"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseWithDefault(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getVersion()I

    move-result p1

    if-ltz p1, :cond_9

    invoke-virtual {v0}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "At least one program name should be given"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not a valid shortcut config file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseProgram(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V
    .locals 6

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, " "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final parseWithDefault(Ljava/lang/String;Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;->setWithDefaultKeys(Z)V

    return-void
.end method


# virtual methods
.method protected getConfigVisitor()Lio/neolang/frontend/ConfigVisitor;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->configVisitor:Lio/neolang/frontend/ConfigVisitor;

    return-object v0
.end method

.method public parseConfigure()Z
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->getConfigureFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseOldConfig(Ljava/io/BufferedReader;)Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->generateVisitor(Lcom/offsec/nhterm/component/extrakey/NeoExtraKey;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to load old extra keys config: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ConfigureLoader"

    invoke-virtual {v1, v0, v2}, Lcom/offsec/nhterm/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method protected setConfigVisitor(Lio/neolang/frontend/ConfigVisitor;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nhterm/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->configVisitor:Lio/neolang/frontend/ConfigVisitor;

    return-void
.end method
