.class Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "CustomDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/ui/CustomDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/ui/CustomDigitalClock;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/ui/CustomDigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 306
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;->this$0:Lcom/jingdong/common/ui/CustomDigitalClock;

    #calls: Lcom/jingdong/common/ui/CustomDigitalClock;->setFormat()V
    invoke-static {v0}, Lcom/jingdong/common/ui/CustomDigitalClock;->access$0(Lcom/jingdong/common/ui/CustomDigitalClock;)V

    .line 311
    return-void
.end method
