.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;,
        Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 4 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n+ 7 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3460:1\n1#2:3461\n145#3,8:3462\n46#4,5:3470\n46#4,3:3512\n50#4:3518\n3446#5,5:3475\n3446#5,5:3480\n292#5:3485\n3446#5,5:3487\n3446#5,5:3492\n3446#5,5:3497\n3446#5,5:3502\n3446#5,5:3507\n3446#5,5:3522\n3446#5,5:3527\n3446#5,5:3532\n3446#5,5:3537\n3446#5,5:3542\n3446#5,5:3547\n28#6:3486\n28#6:3552\n23#6:3553\n131#7,3:3515\n135#7:3519\n1000#8,2:3520\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n*L\n1075#1:3462,8\n1293#1:3470,5\n2553#1:3512,3\n2553#1:3518\n1356#1:3475,5\n1383#1:3480,5\n1675#1:3485\n2415#1:3487,5\n2516#1:3492,5\n2521#1:3497,5\n2536#1:3502,5\n2552#1:3507,5\n2601#1:3522,5\n2608#1:3527,5\n2830#1:3532,5\n2846#1:3537,5\n2847#1:3542,5\n2871#1:3547,5\n2356#1:3486\n3045#1:3552\n3061#1:3553\n2555#1:3515,3\n2555#1:3519\n2559#1:3520,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0011\n\u0002\u0008/\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0000\u0018\u00002\u00020\u0001:\u0004\u00b2\u0002\u00b3\u0002B\u0092\u0001\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012Y\u0010\u000b\u001aU\u0012Q\u0012O\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150\u000c\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J\t\u0010\u0085\u0001\u001a\u00020\u0014H\u0002J\t\u0010\u0086\u0001\u001a\u00020\u0014H\u0002JK\u0010\u0087\u0001\u001a\u00020\u0014\"\u0005\u0008\u0000\u0010\u0088\u0001\"\u0005\u0008\u0001\u0010\u0089\u00012\u0008\u0010\u008a\u0001\u001a\u0003H\u0088\u00012\"\u0010\u008b\u0001\u001a\u001d\u0012\u0005\u0012\u0003H\u0089\u0001\u0012\u0005\u0012\u0003H\u0088\u0001\u0012\u0004\u0012\u00020\u00140\u008c\u0001\u00a2\u0006\u0003\u0008\u008d\u0001H\u0016\u00a2\u0006\u0003\u0010\u008e\u0001J\t\u0010\u008f\u0001\u001a\u00020\u0005H\u0016J5\u0010\u0090\u0001\u001a\u0003H\u0089\u0001\"\u0005\u0008\u0000\u0010\u0089\u00012\u0007\u0010\u0091\u0001\u001a\u00020 2\u000f\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0089\u00010\u0092\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0093\u0001J\u0014\u0010\u0094\u0001\u001a\u00020 2\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010>H\u0017J\u0012\u0010\u0094\u0001\u001a\u00020 2\u0007\u0010\u008a\u0001\u001a\u00020 H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u0095\u0001H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u0096\u0001H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u0097\u0001H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u0098\u0001H\u0017J\u0012\u0010\u0094\u0001\u001a\u00020 2\u0007\u0010\u008a\u0001\u001a\u00020$H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u0099\u0001H\u0017J\u0013\u0010\u0094\u0001\u001a\u00020 2\u0008\u0010\u008a\u0001\u001a\u00030\u009a\u0001H\u0017J\t\u0010\u009b\u0001\u001a\u00020\u0014H\u0002J\t\u0010\u009c\u0001\u001a\u00020\u0014H\u0002J\u0008\u0010(\u001a\u00020\u0014H\u0017JG\u0010\u009d\u0001\u001a\u00020\u00142\u001d\u0010\u009e\u0001\u001a\u0018\u0012\u0004\u0012\u000206\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020>\u0018\u00010\u00a0\u00010\u009f\u00012\u0014\u0010\u00a1\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u00140\u0092\u0001\u00a2\u0006\u0003\u0008\u00a2\u0001H\u0000\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J$\u0010\u00a5\u0001\u001a\u00020$2\u0007\u0010\u00a6\u0001\u001a\u00020$2\u0007\u0010\u00a7\u0001\u001a\u00020$2\u0007\u0010\u00a8\u0001\u001a\u00020$H\u0002J\'\u0010\u00a9\u0001\u001a\u0003H\u0089\u0001\"\u0005\u0008\u0000\u0010\u0089\u00012\u000e\u0010\u00aa\u0001\u001a\t\u0012\u0005\u0012\u0003H\u0089\u00010cH\u0017\u00a2\u0006\u0003\u0010\u00ab\u0001J!\u0010\u00ac\u0001\u001a\u00020\u0014\"\u0005\u0008\u0000\u0010\u0089\u00012\u000f\u0010\u00ad\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0089\u00010\u0092\u0001H\u0016J)\u0010\u00ae\u0001\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`eH\u0002J\t\u0010\u00af\u0001\u001a\u00020\u0014H\u0016J\u000f\u0010\u00b0\u0001\u001a\u00020\u0014H\u0000\u00a2\u0006\u0003\u0008\u00b1\u0001JF\u0010\u00b2\u0001\u001a\u00020\u00142\u001d\u0010\u009e\u0001\u001a\u0018\u0012\u0004\u0012\u000206\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020>\u0018\u00010\u00a0\u00010\u009f\u00012\u0016\u0010\u00a1\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0092\u0001\u00a2\u0006\u0003\u0008\u00a2\u0001H\u0002\u00a2\u0006\u0003\u0010\u00a4\u0001J\u001b\u0010\u00b3\u0001\u001a\u00020\u00142\u0007\u0010\u00a6\u0001\u001a\u00020$2\u0007\u0010\u00b4\u0001\u001a\u00020$H\u0002J\t\u0010\u00b5\u0001\u001a\u00020\u0014H\u0016J\u0012\u0010\u00b6\u0001\u001a\u00020\u00142\u0007\u0010\u00b7\u0001\u001a\u00020 H\u0002J\t\u0010\u00b8\u0001\u001a\u00020\u0014H\u0017J\t\u0010\u00b9\u0001\u001a\u00020\u0014H\u0002J\t\u0010\u00ba\u0001\u001a\u00020\u0014H\u0017J\t\u0010\u00bb\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u00bc\u0001\u001a\u00020\u0014H\u0017J\t\u0010\u00bd\u0001\u001a\u00020\u0014H\u0017J\u000c\u0010\u00be\u0001\u001a\u0005\u0018\u00010\u00bf\u0001H\u0017J\t\u0010\u00c0\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u00c1\u0001\u001a\u00020\u0014H\u0002J\t\u0010\u00c2\u0001\u001a\u00020\u0014H\u0002J\u001d\u0010\u00c3\u0001\u001a\u00020\u00142\u0007\u0010\u00b7\u0001\u001a\u00020 2\t\u0010\u00c4\u0001\u001a\u0004\u0018\u00010gH\u0002J\u001a\u0010\u00c5\u0001\u001a\u00020\u00142\u0007\u0010\u00c6\u0001\u001a\u00020$2\u0006\u0010O\u001a\u00020 H\u0002J\t\u0010\u00c7\u0001\u001a\u00020\u0014H\u0002J\u0012\u0010\u00c8\u0001\u001a\u00020$2\u0007\u0010\u00c9\u0001\u001a\u00020$H\u0002J\u001f\u0010\u00ca\u0001\u001a\u00020>2\t\u0010\u00cb\u0001\u001a\u0004\u0018\u00010>2\t\u0010\u00cc\u0001\u001a\u0004\u0018\u00010>H\u0017J\u000b\u0010\u00cd\u0001\u001a\u0004\u0018\u00010>H\u0001J-\u0010\u00ce\u0001\u001a\u00020$2\u0007\u0010\u00cf\u0001\u001a\u00020$2\u0007\u0010\u00a6\u0001\u001a\u00020$2\u0007\u0010\u00a7\u0001\u001a\u00020$2\u0007\u0010\u00d0\u0001\u001a\u00020$H\u0002J\u001f\u0010\u00d1\u0001\u001a\u00020\u00142\u000e\u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00020\u00140\u0092\u0001H\u0000\u00a2\u0006\u0003\u0008\u00d2\u0001J\t\u0010\u00d3\u0001\u001a\u00020\u0014H\u0002J!\u0010\u00d3\u0001\u001a\u00020\u00142\u0010\u0010\u00d4\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010>0\u00d5\u0001H\u0002\u00a2\u0006\u0003\u0010\u00d6\u0001J\t\u0010\u00d7\u0001\u001a\u00020\u0014H\u0002J\u0014\u0010\u00d8\u0001\u001a\u00020\u00142\t\u0008\u0002\u0010\u00d9\u0001\u001a\u00020 H\u0002J\t\u0010\u00da\u0001\u001a\u00020\u0014H\u0002J.\u0010\u00db\u0001\u001a\u00020 2\u001d\u0010\u009e\u0001\u001a\u0018\u0012\u0004\u0012\u000206\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020>\u0018\u00010\u00a0\u00010\u009f\u0001H\u0000\u00a2\u0006\u0003\u0008\u00dc\u0001J\t\u0010\u00dd\u0001\u001a\u00020\u0014H\u0002J_\u0010\u00de\u0001\u001a\u00020\u00142T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002J_\u0010\u00e0\u0001\u001a\u00020\u00142T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002J\t\u0010\u00e1\u0001\u001a\u00020\u0014H\u0002J\u0014\u0010\u00e2\u0001\u001a\u00020\u00142\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010>H\u0002J\t\u0010\u00e3\u0001\u001a\u00020\u0014H\u0002J\t\u0010\u00e4\u0001\u001a\u00020\u0014H\u0002J_\u0010\u00e5\u0001\u001a\u00020\u00142T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002J\u0012\u0010\u00e6\u0001\u001a\u00020\u00142\u0007\u0010\u00e7\u0001\u001a\u00020IH\u0002J_\u0010\u00e8\u0001\u001a\u00020\u00142T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002J$\u0010\u00e9\u0001\u001a\u00020\u00142\u0007\u0010\u00ea\u0001\u001a\u00020$2\u0007\u0010\u00eb\u0001\u001a\u00020$2\u0007\u0010\u00ec\u0001\u001a\u00020$H\u0002J\u0012\u0010\u00ed\u0001\u001a\u00020\u00142\u0007\u0010\u00ee\u0001\u001a\u00020$H\u0002J\u001a\u0010\u00ef\u0001\u001a\u00020\u00142\u0006\u0010_\u001a\u00020$2\u0007\u0010\u00ec\u0001\u001a\u00020$H\u0002J\u0019\u0010\u00f0\u0001\u001a\u00020\u00142\u000e\u0010\u00f1\u0001\u001a\t\u0012\u0004\u0012\u00020\u00140\u0092\u0001H\u0016J\t\u0010\u00f2\u0001\u001a\u00020\u0014H\u0002J_\u0010\u00f3\u0001\u001a\u00020\u00142T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002Jj\u0010\u00f4\u0001\u001a\u00020\u00142\t\u0008\u0002\u0010\u00d9\u0001\u001a\u00020 2T\u0010\u00df\u0001\u001aO\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H\u0002J\t\u0010\u00f5\u0001\u001a\u00020\u0014H\u0002J$\u0010\u00f6\u0001\u001a\u00020\u00142\u0007\u0010\u00f7\u0001\u001a\u00020$2\u0007\u0010\u00f8\u0001\u001a\u00020$2\u0007\u0010\u00f9\u0001\u001a\u00020$H\u0002J\u0012\u0010\u00fa\u0001\u001a\u00020\u00142\u0007\u0010\u00fb\u0001\u001a\u00020tH\u0016J\t\u0010\u00fc\u0001\u001a\u00020\u0014H\u0002J\u000b\u0010\u00fd\u0001\u001a\u0004\u0018\u00010>H\u0016JP\u0010\u00fe\u0001\u001a\u0003H\u0089\u0001\"\u0005\u0008\u0000\u0010\u0089\u00012\u000e\u0010\u00aa\u0001\u001a\t\u0012\u0005\u0012\u0003H\u0089\u00010c2\'\u0010\u00fb\u0001\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`eH\u0002\u00a2\u0006\u0003\u0010\u00ff\u0001J\t\u0010\u0080\u0002\u001a\u00020\u0014H\u0017J\t\u0010\u0081\u0002\u001a\u00020\u0014H\u0002J\t\u0010\u0082\u0002\u001a\u00020\u0014H\u0002J\t\u0010\u0083\u0002\u001a\u00020\u0014H\u0017J\u0013\u0010\u0084\u0002\u001a\u00020\u00142\u0008\u0010\u0084\u0002\u001a\u00030\u0085\u0002H\u0017J\t\u0010\u0086\u0002\u001a\u00020\u0014H\u0017J\u001c\u0010\u0087\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$2\u0008\u0010\u0084\u0002\u001a\u00030\u0085\u0002H\u0017J1\u0010\u0088\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$2\t\u0010\u0089\u0002\u001a\u0004\u0018\u00010>2\u0007\u0010\u00b7\u0001\u001a\u00020 2\t\u0010\u008a\u0002\u001a\u0004\u0018\u00010>H\u0002J\t\u0010\u008b\u0002\u001a\u00020\u0014H\u0017J\u0012\u0010\u008c\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$H\u0002J\u001d\u0010\u008c\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$2\t\u0010\u008d\u0002\u001a\u0004\u0018\u00010>H\u0002J\u001d\u0010\u008e\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$2\t\u0010\u008d\u0002\u001a\u0004\u0018\u00010>H\u0017J\t\u0010\u008f\u0002\u001a\u00020\u0014H\u0016J&\u0010\u0090\u0002\u001a\u00020\u00142\u0015\u0010\u0091\u0002\u001a\u0010\u0012\u000b\u0008\u0001\u0012\u0007\u0012\u0002\u0008\u00030\u0092\u00020\u00d5\u0001H\u0017\u00a2\u0006\u0003\u0010\u0093\u0002J\u001d\u0010\u0094\u0002\u001a\u00020\u00142\u0007\u0010\u00b7\u0001\u001a\u00020 2\t\u0010\u008a\u0002\u001a\u0004\u0018\u00010>H\u0002J\u0012\u0010\u0095\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$H\u0017J\u0012\u0010\u0096\u0002\u001a\u00020\u00012\u0007\u0010\u00aa\u0001\u001a\u00020$H\u0017J\u001d\u0010\u0097\u0002\u001a\u00020\u00142\u0007\u0010\u00aa\u0001\u001a\u00020$2\t\u0010\u008d\u0002\u001a\u0004\u0018\u00010>H\u0016J\t\u0010\u0098\u0002\u001a\u00020\u0014H\u0016J\t\u0010\u0099\u0002\u001a\u00020\u0014H\u0002J#\u0010\u009a\u0002\u001a\u00020 2\u0007\u0010\u00fb\u0001\u001a\u0002062\t\u0010\u009b\u0002\u001a\u0004\u0018\u00010>H\u0000\u00a2\u0006\u0003\u0008\u009c\u0002J\u0014\u0010\u009d\u0002\u001a\u00020\u00142\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010>H\u0001J(\u0010\u009e\u0002\u001a\u00020\u00142\u0007\u0010\u009f\u0002\u001a\u00020$2\t\u0010\u008d\u0002\u001a\u0004\u0018\u00010>2\t\u0010\u008a\u0002\u001a\u0004\u0018\u00010>H\u0002J\u0012\u0010\u00a0\u0002\u001a\u00020\u00142\u0007\u0010\u00a1\u0002\u001a\u00020$H\u0002J(\u0010\u00a2\u0002\u001a\u00020\u00142\u0007\u0010\u009f\u0002\u001a\u00020$2\t\u0010\u008d\u0002\u001a\u0004\u0018\u00010>2\t\u0010\u008a\u0002\u001a\u0004\u0018\u00010>H\u0002J\u0012\u0010\u00a3\u0002\u001a\u00020\u00142\u0007\u0010\u009f\u0002\u001a\u00020$H\u0002J\u001b\u0010\u00a4\u0002\u001a\u00020\u00142\u0007\u0010\u00a6\u0001\u001a\u00020$2\u0007\u0010\u00ec\u0001\u001a\u00020$H\u0002J\u001b\u0010\u00a5\u0002\u001a\u00020\u00142\u0007\u0010\u00a6\u0001\u001a\u00020$2\u0007\u0010\u00a6\u0002\u001a\u00020$H\u0002J{\u0010\u00a7\u0002\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`e2\'\u0010\u00a8\u0002\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`e2\'\u0010\u00a9\u0002\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`eH\u0002J\u0014\u0010\u00aa\u0002\u001a\u00020\u00142\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010>H\u0016J\u0014\u0010\u00ab\u0002\u001a\u00020\u00142\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010>H\u0001J\u0012\u0010\u00ac\u0002\u001a\u00020$2\u0007\u0010\u00a6\u0001\u001a\u00020$H\u0002J\t\u0010\u00ad\u0002\u001a\u00020\u0014H\u0016J\t\u0010\u00ae\u0002\u001a\u00020\u0014H\u0002J\t\u0010\u00af\u0002\u001a\u00020\u0014H\u0002J\u0016\u0010\u00b0\u0002\u001a\u00020$*\u00020r2\u0007\u0010\u00a6\u0001\u001a\u00020$H\u0002J\u0018\u0010\u00b1\u0002\u001a\u0004\u0018\u00010>*\u00020r2\u0007\u0010\u00c9\u0001\u001a\u00020$H\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020 8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020$8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&Ra\u0010\u000b\u001aU\u0012Q\u0012O\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R&\u00102\u001a\u00020$2\u0006\u00101\u001a\u00020$8\u0016@RX\u0097\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00083\u0010.\u001a\u0004\u00084\u0010&R\u0016\u00105\u001a\u0004\u0018\u0001068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u001a\u00109\u001a\u00020 8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008:\u0010.\u001a\u0004\u0008;\u0010\"R\u0016\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010>0=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010C\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010\"R\u0014\u0010E\u001a\u00020 8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010\"R\u000e\u0010G\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000Ra\u0010J\u001aU\u0012Q\u0012O\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010K\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MRa\u0010N\u001aU\u0012Q\u0012O\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010O\u001a\u00020 2\u0006\u00101\u001a\u00020 8\u0016@RX\u0097\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008P\u0010.\u001a\u0004\u0008Q\u0010\"R\u0014\u0010R\u001a\u0008\u0012\u0004\u0012\u0002060=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010U\u001a\u00020 2\u0006\u00101\u001a\u00020 @BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010\"R\u001e\u0010W\u001a\u00020 2\u0006\u00101\u001a\u00020 @BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010\"R\u0010\u0010Y\u001a\u0004\u0018\u00010ZX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010[\u001a\"\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$\u0018\u00010\\j\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$\u0018\u0001`]X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010`\u001a\u00020@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010a\u001a\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u0004\u0018\u00010gX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010h\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010g0=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010l\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000Rj\u0010n\u001a^\u0012\u0004\u0012\u00020$\u0012$\u0012\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`e0\\j.\u0012\u0004\u0012\u00020$\u0012$\u0012\"\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010>0d0bj\u0002`e`]X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010p\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010s\u001a\u0004\u0018\u00010t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010vR\u000e\u0010w\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010x\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010y\u001a\u00020 8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008z\u0010.\u001a\u0004\u0008{\u0010\"R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010|\u001a\u00020}X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010~\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u007f\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0080\u0001\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0081\u0001\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0082\u0001\u001a\u0004\u0018\u00010>*\u00020r8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00b4\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/ComposerImpl;",
        "Landroidx/compose/runtime/Composer;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "slotTable",
        "Landroidx/compose/runtime/SlotTable;",
        "abandonSet",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "changes",
        "",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Landroidx/compose/runtime/SlotWriter;",
        "slots",
        "Landroidx/compose/runtime/RememberManager;",
        "rememberManager",
        "",
        "Landroidx/compose/runtime/Change;",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V",
        "getApplier",
        "()Landroidx/compose/runtime/Applier;",
        "applyCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getApplyCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "areChildrenComposing",
        "",
        "getAreChildrenComposing$runtime_release",
        "()Z",
        "changeCount",
        "",
        "getChangeCount$runtime_release",
        "()I",
        "childrenComposing",
        "collectParameterInformation",
        "getComposition",
        "()Landroidx/compose/runtime/ControlledComposition;",
        "compositionData",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "getCompositionData$annotations",
        "()V",
        "getCompositionData",
        "()Landroidx/compose/runtime/tooling/CompositionData;",
        "<set-?>",
        "compoundKeyHash",
        "getCompoundKeyHash$annotations",
        "getCompoundKeyHash",
        "currentRecomposeScope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "getCurrentRecomposeScope$runtime_release",
        "()Landroidx/compose/runtime/RecomposeScopeImpl;",
        "defaultsInvalid",
        "getDefaultsInvalid$annotations",
        "getDefaultsInvalid",
        "downNodes",
        "Landroidx/compose/runtime/Stack;",
        "",
        "entersStack",
        "Landroidx/compose/runtime/IntStack;",
        "groupNodeCount",
        "groupNodeCountStack",
        "hasInvalidations",
        "getHasInvalidations",
        "hasPendingChanges",
        "getHasPendingChanges$runtime_release",
        "hasProvider",
        "insertAnchor",
        "Landroidx/compose/runtime/Anchor;",
        "insertFixups",
        "insertTable",
        "getInsertTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "insertUpFixups",
        "inserting",
        "getInserting$annotations",
        "getInserting",
        "invalidateStack",
        "invalidations",
        "Landroidx/compose/runtime/Invalidation;",
        "isComposing",
        "isComposing$runtime_release",
        "isDisposed",
        "isDisposed$runtime_release",
        "nodeCountOverrides",
        "",
        "nodeCountVirtualOverrides",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "nodeExpected",
        "nodeIndex",
        "nodeIndexStack",
        "parentProvider",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;",
        "Landroidx/compose/runtime/CompositionLocal;",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "pending",
        "Landroidx/compose/runtime/Pending;",
        "pendingStack",
        "pendingUps",
        "previousCount",
        "previousMoveFrom",
        "previousMoveTo",
        "previousRemove",
        "providerUpdates",
        "providersInvalid",
        "providersInvalidStack",
        "reader",
        "Landroidx/compose/runtime/SlotReader;",
        "recomposeScope",
        "Landroidx/compose/runtime/RecomposeScope;",
        "getRecomposeScope",
        "()Landroidx/compose/runtime/RecomposeScope;",
        "reusing",
        "reusingGroup",
        "skipping",
        "getSkipping$annotations",
        "getSkipping",
        "snapshot",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "startedGroup",
        "startedGroups",
        "writer",
        "writersReaderDelta",
        "node",
        "getNode",
        "(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;",
        "abortRoot",
        "addRecomposeScope",
        "apply",
        "V",
        "T",
        "value",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "buildContext",
        "cache",
        "invalid",
        "Lkotlin/Function0;",
        "(ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "changed",
        "",
        "",
        "",
        "",
        "",
        "",
        "cleanUpCompose",
        "clearUpdatedNodeCounts",
        "composeContent",
        "invalidationsRequested",
        "Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "composeContent$runtime_release",
        "(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V",
        "compoundKeyOf",
        "group",
        "recomposeGroup",
        "recomposeKey",
        "consume",
        "key",
        "(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;",
        "createNode",
        "factory",
        "currentCompositionLocalScope",
        "disableReusing",
        "dispose",
        "dispose$runtime_release",
        "doCompose",
        "doRecordDownsFor",
        "nearestCommonRoot",
        "enableReusing",
        "end",
        "isNode",
        "endDefaults",
        "endGroup",
        "endMovableGroup",
        "endNode",
        "endProviders",
        "endReplaceableGroup",
        "endRestartGroup",
        "Landroidx/compose/runtime/ScopeUpdateScope;",
        "endReusableGroup",
        "endRoot",
        "ensureWriter",
        "enterGroup",
        "newPending",
        "exitGroup",
        "expectedNodeCount",
        "finalizeCompose",
        "insertedGroupVirtualIndex",
        "index",
        "joinKey",
        "left",
        "right",
        "nextSlot",
        "nodeIndexOf",
        "groupLocation",
        "recomposeIndex",
        "prepareCompose",
        "prepareCompose$runtime_release",
        "realizeDowns",
        "nodes",
        "",
        "([Ljava/lang/Object;)V",
        "realizeMovement",
        "realizeOperationLocation",
        "forParent",
        "realizeUps",
        "recompose",
        "recompose$runtime_release",
        "recomposeToGroupEnd",
        "record",
        "change",
        "recordApplierOperation",
        "recordDelete",
        "recordDown",
        "recordEndGroup",
        "recordEndRoot",
        "recordFixup",
        "recordInsert",
        "anchor",
        "recordInsertUpFixup",
        "recordMoveNode",
        "from",
        "to",
        "count",
        "recordReaderMoving",
        "location",
        "recordRemoveNode",
        "recordSideEffect",
        "effect",
        "recordSlotEditing",
        "recordSlotEditingOperation",
        "recordSlotTableOperation",
        "recordUp",
        "recordUpsAndDowns",
        "oldGroup",
        "newGroup",
        "commonRoot",
        "recordUsed",
        "scope",
        "registerInsertUpFixup",
        "rememberedValue",
        "resolveCompositionLocal",
        "(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;",
        "skipCurrentGroup",
        "skipGroup",
        "skipReaderToGroupEnd",
        "skipToGroupEnd",
        "sourceInformation",
        "",
        "sourceInformationMarkerEnd",
        "sourceInformationMarkerStart",
        "start",
        "objectKey",
        "data",
        "startDefaults",
        "startGroup",
        "dataKey",
        "startMovableGroup",
        "startNode",
        "startProviders",
        "values",
        "Landroidx/compose/runtime/ProvidedValue;",
        "([Landroidx/compose/runtime/ProvidedValue;)V",
        "startReaderGroup",
        "startReplaceableGroup",
        "startRestartGroup",
        "startReusableGroup",
        "startReusableNode",
        "startRoot",
        "tryImminentInvalidation",
        "instance",
        "tryImminentInvalidation$runtime_release",
        "updateCachedValue",
        "updateCompoundKeyWhenWeEnterGroup",
        "groupKey",
        "updateCompoundKeyWhenWeEnterGroupKeyHash",
        "keyHash",
        "updateCompoundKeyWhenWeExitGroup",
        "updateCompoundKeyWhenWeExitGroupKeyHash",
        "updateNodeCount",
        "updateNodeCountOverrides",
        "newCount",
        "updateProviderMapGroup",
        "parentScope",
        "currentProviders",
        "updateRememberedValue",
        "updateValue",
        "updatedNodeCount",
        "useNode",
        "validateNodeExpected",
        "validateNodeNotExpected",
        "groupCompoundKeyPart",
        "nodeAt",
        "CompositionContextHolder",
        "CompositionContextImpl",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final abandonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation
.end field

.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private childrenComposing:I

.field private collectParameterInformation:Z

.field private final composition:Landroidx/compose/runtime/ControlledComposition;

.field private compoundKeyHash:I

.field private downNodes:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final entersStack:Landroidx/compose/runtime/IntStack;

.field private groupNodeCount:I

.field private groupNodeCountStack:Landroidx/compose/runtime/IntStack;

.field private hasProvider:Z

.field private insertAnchor:Landroidx/compose/runtime/Anchor;

.field private final insertFixups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final insertTable:Landroidx/compose/runtime/SlotTable;

.field private final insertUpFixups:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private inserting:Z

.field private final invalidateStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;"
        }
    .end annotation
.end field

.field private isComposing:Z

.field private isDisposed:Z

.field private nodeCountOverrides:[I

.field private nodeCountVirtualOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nodeExpected:Z

.field private nodeIndex:I

.field private nodeIndexStack:Landroidx/compose/runtime/IntStack;

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;

.field private parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private pending:Landroidx/compose/runtime/Pending;

.field private final pendingStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/Pending;",
            ">;"
        }
    .end annotation
.end field

.field private pendingUps:I

.field private previousCount:I

.field private previousMoveFrom:I

.field private previousMoveTo:I

.field private previousRemove:I

.field private final providerUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field private reader:Landroidx/compose/runtime/SlotReader;

.field private reusing:Z

.field private reusingGroup:I

.field private final slotTable:Landroidx/compose/runtime/SlotTable;

.field private snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

.field private startedGroup:Z

.field private final startedGroups:Landroidx/compose/runtime/IntStack;

.field private writer:Landroidx/compose/runtime/SlotWriter;

.field private writersReaderDelta:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    const-string v0, "applier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slotTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abandonSet"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "composition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    new-instance p1, Landroidx/compose/runtime/Stack;

    invoke-direct {p1}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentHashMapOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    new-instance p2, Landroidx/compose/runtime/SlotTable;

    invoke-direct {p2}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->close()V

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    new-instance p2, Landroidx/compose/runtime/IntStack;

    invoke-direct {p2}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p1
.end method

.method private final abortRoot()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method public static final synthetic access$endGroup(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public static final synthetic access$getAbandonSet$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return p0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    return-object p0
.end method

.method public static final synthetic access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public static final synthetic access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public static final synthetic access$startGroup(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    return-void
.end method

.method private final addRecomposeScope()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final cleanUpCompose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->clearUpdatedNodeCounts()V

    return-void
.end method

.method private final clearUpdatedNodeCounts()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    return-void
.end method

.method private final compoundKeyOf(III)I
    .locals 1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result p2

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p2

    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, p3, p1}, Landroidx/compose/runtime/ComposerImpl;->groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I

    move-result p1

    xor-int p3, p2, p1

    :goto_0
    return p3
.end method

.method private final currentCompositionLocalScope()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }"

    const/16 v2, 0xca

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->hasProvider:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    :goto_1
    if-lez v0, :cond_6

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    return-object v0
.end method

.method private final doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-string v0, "Compose:recompose"

    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize$runtime_release()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys$runtime_release()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues$runtime_release()[Ljava/lang/Object;

    move-result-object v7

    aget-object v4, v7, v4

    check-cast v4, Landroidx/compose/runtime/collection/IdentityArraySet;

    check-cast v6, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    if-nez v7, :cond_1

    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    new-instance v9, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v9, v6, v7, v4}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v5, v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda-24$$inlined$sortBy$1;

    invoke-direct {v2}, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda-24$$inlined$sortBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$doCompose$2$3;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$3;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$doCompose$2$4;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$4;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;

    invoke-direct {v2, p2, p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->observeDerivedStateRecalculations(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    sget-object p2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p1

    :cond_6
    const-string p1, "Reentrant composition is not supported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final doRecordDownsFor(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, p2, p1}, Landroidx/compose/runtime/ComposerImpl;->nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordDown(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final end(Z)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getUsed()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastToSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/KeyInfo;

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v14

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v15

    invoke-direct {v0, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->recordRemoveNode(II)V

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-virtual {v2, v14, v3}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-direct {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v14}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v16

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int v3, v16, v3

    invoke-static {v14, v15, v3}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    :cond_1
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-ge v11, v8, :cond_1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    if-eq v3, v13, :cond_5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v13

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v13, v12, :cond_4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v14

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v16

    move-object/from16 v17, v5

    add-int v5, v12, v16

    invoke-direct {v0, v15, v5, v14}, Landroidx/compose/runtime/ComposerImpl;->recordMoveNode(III)V

    invoke-virtual {v2, v13, v12, v14}, Landroidx/compose/runtime/Pending;->registerMoveNode(III)V

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    goto :goto_4

    :cond_5
    move-object/from16 v17, v5

    add-int/lit8 v10, v10, 0x1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v3

    add-int/2addr v12, v3

    move-object/from16 v5, v17

    goto :goto_3

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getGroupEnd()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_7
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_5
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->recordRemoveNode(II)V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-eqz p1, :cond_9

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->registerInsertUpFixup()V

    const/4 v1, 0x1

    :cond_9
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endEmpty()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->close()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->recordInsert(Landroidx/compose/runtime/Anchor;)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    invoke-direct {v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordUp()V

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordEndGroup()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v4

    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v5

    if-eq v1, v5, :cond_c

    invoke-direct {v0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    :cond_c
    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    :cond_e
    :goto_6
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->exitGroup(IZ)V

    return-void
.end method

.method private final endGroup()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method private final endRoot()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordEndRoot()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->finalizeCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    return-void
.end method

.method private final ensureWriter()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->hasProvider:Z

    :cond_0
    return-void
.end method

.method private final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final exitGroup(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Pending;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->setGroupIndex(I)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final finalizeCompose()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void

    :cond_0
    const-string v0, "Missed recording an endGroup()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Start/end imbalance"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static synthetic getCompositionData$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    return-void
.end method

.method public static synthetic getCompoundKeyHash$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    return-void
.end method

.method public static synthetic getDefaultsInvalid$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getInserting$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method private final getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getSkipping$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method private final groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I
    .locals 2

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_4
    :goto_0
    move p1, v0

    :goto_1
    return p1
.end method

.method private final insertedGroupVirtualIndex(I)I
    .locals 0

    rsub-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private final nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final nodeIndexOf(IIII)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    :goto_0
    if-eq v0, p3, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p4, 0x0

    :cond_2
    if-ne v0, p2, :cond_3

    return p4

    :cond_3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result p3

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p2

    sub-int/2addr p3, p2

    add-int/2addr p3, p4

    :goto_2
    if-ge p4, p3, :cond_6

    if-ne v0, p1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-ge v0, p1, :cond_6

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result p2

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    add-int/2addr p4, v0

    move v0, p2

    goto :goto_3

    :cond_6
    :goto_4
    return p4
.end method

.method private final realizeDowns()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns([Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    :cond_0
    return-void
.end method

.method private final realizeDowns([Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;-><init>([Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final realizeMovement()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    if-lez v0, :cond_1

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;-><init>(II)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;

    invoke-direct {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;-><init>(III)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final realizeOperationLocation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p1

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-lez v0, :cond_2

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;-><init>(I)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to seek backward"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method static synthetic realizeOperationLocation$default(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation(Z)V

    return-void
.end method

.method private final realizeUps()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;-><init>(I)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void
.end method

.method private final recomposeToGroupEnd()V
    .locals 12

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v5

    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v8

    invoke-static {v7, v8, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v2

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v10

    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v8

    invoke-direct {p0, v9, v8, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    invoke-direct {p0, v10, v8, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->nodeIndexOf(IIII)I

    move-result v9

    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v9

    invoke-direct {p0, v9, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result v9

    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    move-object v9, p0

    check-cast v9, Landroidx/compose/runtime/Composer;

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/RecomposeScopeImpl;->compose(Landroidx/compose/runtime/Composer;)V

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/SlotReader;->restoreParent(I)V

    move v9, v8

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v7}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    :goto_1
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v10

    invoke-static {v7, v10, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-direct {p0, v9, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v1

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    :goto_2
    iput v5, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method private final record(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordApplierOperation(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns()V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordDelete()V
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getRemoveCurrentGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getGroupSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    return-void
.end method

.method private final recordDown(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordEndGroup()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getEndGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v4, v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Missed recording an endGroup"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final recordEndRoot()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getEndGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    :cond_0
    return-void
.end method

.method private final recordFixup(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordInsert(Landroidx/compose/runtime/Anchor;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;

    invoke-direct {v1, v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;

    invoke-direct {v2, v1, p1, v0}, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method

.method private final recordInsertUpFixup(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordMoveNode(III)V
    .locals 3

    if-lez p3, :cond_1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    if-lez v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    sub-int v2, p1, v0

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    sub-int v2, p2, v0

    if-ne v1, v2, :cond_0

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    iput p3, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private final recordReaderMoving(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    return-void
.end method

.method private final recordRemoveNode(II)V
    .locals 1

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    if-ne v0, p1, :cond_1

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_1

    :cond_2
    const-string p2, "Invalid remove index "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final recordSlotEditing()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getStartRootGroup$p()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    invoke-static {p0, v4, v2, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iput-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;-><init>(Landroidx/compose/runtime/Anchor;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v4, v1, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation$default(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditing()V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/Applier<",
            "*>;-",
            "Landroidx/compose/runtime/SlotWriter;",
            "-",
            "Landroidx/compose/runtime/RememberManager;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation(Z)V

    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method static synthetic recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordUp()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    :goto_0
    return-void
.end method

.method private final recordUpsAndDowns(III)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result p3

    :goto_0
    if-lez p1, :cond_1

    if-eq p1, p3, :cond_1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordUp()V

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    return-void
.end method

.method private final registerInsertUpFixup()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    invoke-virtual {v1}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final resolveCompositionLocal(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)TT;"
        }
    .end annotation

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->contains(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->getValueOf(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionLocal;->getDefaultValueHolder$runtime_release()Landroidx/compose/runtime/LazyValueHolder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/LazyValueHolder;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final skipGroup()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final skipReaderToGroupEnd()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParentNodes()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    return-void
.end method

.method private final start(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 8

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    invoke-direct {p0, p1, p2, p4}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    if-eqz p3, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->startNode(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    invoke-virtual {v2, p1, p2, p4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    :cond_3
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p4, Landroidx/compose/runtime/KeyInfo;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p4

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p4, p1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    :goto_1
    invoke-direct {p0, p3, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v0, Landroidx/compose/runtime/Pending;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->extractKeys()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/Pending;->getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    add-int/2addr p2, v3

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Pending;->slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v3

    invoke-virtual {v0, p2, v3}, Landroidx/compose/runtime/Pending;->registerMoveSlot(II)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    if-lez v2, :cond_8

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$start$2;

    invoke-direct {p1, v2}, Landroidx/compose/runtime/ComposerImpl$start$2;-><init>(I)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    :cond_8
    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->ensureWriter()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v1

    if-eqz p3, :cond_a

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->startNode(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    if-eqz p4, :cond_c

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez p2, :cond_b

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    :cond_b
    invoke-virtual {v2, p1, p2, p4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    iget-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez p2, :cond_d

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    :cond_d
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    :goto_3
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance p2, Landroidx/compose/runtime/KeyInfo;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    new-instance v1, Landroidx/compose/runtime/Pending;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    if-eqz p3, :cond_e

    const/4 p2, 0x0

    goto :goto_4

    :cond_e
    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_4
    invoke-direct {v1, p1, p2}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    :cond_f
    :goto_5
    invoke-direct {p0, p3, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method private final startGroup(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method private final startGroup(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method private final startReaderGroup(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->startNode()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_1

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    :goto_0
    return-void
.end method

.method private final startRoot()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->collectParameterInformation:Z

    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->resolveCompositionLocal(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroupKeyHash(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroupKeyHash(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    xor-int/2addr p1, v0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void
.end method

.method private final updateNodeCount(II)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    :cond_2
    aput p2, v0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateNodeCountOverrides(II)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_5

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    if-ltz v0, :cond_2

    move v2, v0

    :goto_1
    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Stack;->peek(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Pending;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_2

    :cond_0
    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_2
    if-gez p1, :cond_3

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private final updateProviderMapGroup(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object p1

    const/16 v0, 0xcc

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderMaps()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-object p1
.end method

.method private final updatedNodeCount(I)I
    .locals 2

    if-gez p1, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-eqz v0, :cond_3

    aget v0, v0, p1

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p1

    return p1
.end method

.method private final validateNodeExpected()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void

    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final validateNodeNotExpected()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;

    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordFixup(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method

.method public buildContext()Landroidx/compose/runtime/CompositionContext;
    .locals 4

    const/16 v0, 0xce

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    new-instance v1, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v2

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->collectParameterInformation:Z

    invoke-direct {v1, p0, v2, v3}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZ)V

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->updateCompositionLocalScope(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public final cache(ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public changed(B)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(C)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(D)Z
    .locals 5
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/4 v3, 0x0

    cmpg-double v4, p1, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return v2
.end method

.method public changed(F)Z
    .locals 3
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return v2
.end method

.method public changed(I)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(J)Z
    .locals 3
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public changed(S)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(Z)Z
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public collectParameterInformation()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->collectParameterInformation:Z

    return-void
.end method

.method public final composeContent$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "invalidationsRequested"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    const-string p1, "Expected applyChanges() to have been called"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->resolveCompositionLocal(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$createNode$2;

    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Anchor;I)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordFixup(Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$createNode$3;

    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$3;-><init>(Landroidx/compose/runtime/Anchor;I)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordInsertUpFixup(Lkotlin/jvm/functions/Function3;)V

    return-void

    :cond_0
    const-string p1, "createNode() can only be called when inserting"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public disableReusing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public final dispose$runtime_release()V
    .locals 3

    const-string v0, "Compose:Composer.dispose"

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    move-object v2, p0

    check-cast v2, Landroidx/compose/runtime/Composer;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v1}, Landroidx/compose/runtime/Stack;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v1
.end method

.method public enableReusing()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public endDefaults()V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInScope(Z)V

    :cond_0
    return-void
.end method

.method public endMovableGroup()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endNode()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public endProviders()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    return-void
.end method

.method public endReplaceableGroup()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 5
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;

    invoke-direct {v4, v3, p0}, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime_release()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->collectParameterInformation:Z

    if-eqz v3, :cond_7

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setAnchor(Landroidx/compose/runtime/Anchor;)V

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    move-object v1, v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_4
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v1, Landroidx/compose/runtime/ScopeUpdateScope;

    return-object v1
.end method

.method public endReusableGroup()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public getApplier()Landroidx/compose/runtime/Applier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object v0
.end method

.method public getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext$runtime_release()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getAreChildrenComposing$runtime_release()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getChangeCount$runtime_release()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getComposition()Landroidx/compose/runtime/ControlledComposition;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    return-object v0
.end method

.method public getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionData;

    return-object v0
.end method

.method public getCompoundKeyHash()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return v0
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDefaultsInvalid()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInvalid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final getHasInvalidations()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getHasPendingChanges$runtime_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getInsertTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public getInserting()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    return v0
.end method

.method public getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScope;

    return-object v0
.end method

.method public getSkipping()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRequiresRecompose()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isComposing$runtime_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return v0
.end method

.method public final isDisposed$runtime_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    return v0
.end method

.method public joinKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    throw p1

    :cond_0
    const-string p1, "Preparing a composition while composing is not supported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final recompose$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "invalidationsRequested"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    const-string p1, "Expected applyChanges() to have been called"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    :goto_1
    return-void
.end method

.method public rememberedValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public skipCurrentGroup()V
    .locals 6
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->isNode()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public skipToGroupEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->scopeSkipped()V

    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    :goto_2
    return-void

    :cond_3
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public sourceInformation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const-string/jumbo v0, "sourceInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->insertAux(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sourceInformationMarkerEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public sourceInformationMarkerStart(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const-string/jumbo v0, "sourceInformation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public startDefaults()V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public startMovableGroup(ILjava/lang/Object;)V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public startNode()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/16 v1, 0x7d

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/16 v2, 0x7e

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    const/16 v1, 0x7e

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v0}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 6
    .annotation runtime Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    const/16 v1, 0xcb

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderValues()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/Composer;

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;

    invoke-direct {v2, p1, v0}, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;-><init>([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->invokeComposableForResult(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object p1

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->hasProvider:Z

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }"

    if-eqz v1, :cond_5

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/16 v0, 0xca

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, p1}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startReplaceableGroup(I)V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->addRecomposeScope()V

    move-object p1, p0

    check-cast p1, Landroidx/compose/runtime/Composer;

    return-object p1
.end method

.method public startReusableGroup(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public startReusableNode()V
    .locals 3

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->start(ILjava/lang/Object;ZLjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v1, v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final updateCachedValue(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateRememberedValue(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/ComposerImpl$updateValue$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$updateValue$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupSlotIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$updateValue$2;

    invoke-direct {v2, p1, p0, v0}, Landroidx/compose/runtime/ComposerImpl$updateValue$2;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public useNode()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordDown(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "useNode() called while inserting"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
