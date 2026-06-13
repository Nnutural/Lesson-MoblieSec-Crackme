.class public Lanywheresoftware/b4a/Msgbox;
.super Ljava/lang/Object;
.source "Msgbox.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/Msgbox$DialogResponse;
    }
.end annotation


# static fields
.field private static closeMyLoop:Ljava/lang/Object;

.field private static flagsF:Ljava/lang/reflect/Field;

.field public static isDismissing:Z

.field private static nextM:Ljava/lang/reflect/Method;

.field public static pd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static stopCodeAfterDismiss:Z

.field private static visible:Z

.field private static visibleAD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static whenF:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-class v1, Landroid/os/Message;

    .line 28
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->closeMyLoop:Ljava/lang/Object;

    .line 31
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    .line 32
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 40
    :try_start_0
    const-class v1, Landroid/os/MessageQueue;

    const-string v2, "next"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->nextM:Ljava/lang/reflect/Method;

    .line 41
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->nextM:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    const-class v1, Landroid/os/Message;

    const-string v2, "when"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->whenF:Ljava/lang/reflect/Field;

    .line 43
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->whenF:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    const/4 v1, 0x0

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    const-class v1, Landroid/os/Message;

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    .line 47
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static debugWait()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    sget-boolean v0, Lanywheresoftware/b4a/Msgbox;->visible:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "already visible"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    sget-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 152
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->visible:Z

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 147
    sget-boolean v0, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    if-eqz v0, :cond_2

    .line 148
    const-string v0, ""

    const-string v1, "throwing b4a uncaught exception"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lanywheresoftware/b4a/B4AUncaughtException;

    invoke-direct {v0}, Lanywheresoftware/b4a/B4AUncaughtException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 153
    throw v0

    .line 152
    :cond_2
    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->visible:Z

    goto :goto_0
.end method

.method public static dismiss(Z)V
    .locals 5
    .parameter "stopCodeAfterDismiss"

    .prologue
    .line 63
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->dismissProgressDialog()V

    .line 64
    sget-boolean v2, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    const-string v2, "anywheresoftware.b4a.debug.Debug"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hideProgressDialogToAvoidLeak"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 67
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 73
    sget-boolean v2, Lanywheresoftware/b4a/Msgbox;->visible:Z

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 75
    sget-object v2, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 76
    .local v0, ad:Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    .end local v0           #ad:Landroid/app/AlertDialog;
    :cond_1
    :goto_1
    sput-boolean p0, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    .line 86
    :cond_2
    return-void

    .line 68
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 69
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->sendCloseMyLoopMessage()V

    goto :goto_1
.end method

.method public static dismissProgressDialog()V
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->pd:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->pd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 96
    .local v0, p:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    .end local v0           #p:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method public static isItReallyAMsgboxAndNotDebug()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static msgbox(Landroid/app/AlertDialog;Z)V
    .locals 5
    .parameter "ad"
    .parameter "isTopMostInStack"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    sget-boolean v1, Lanywheresoftware/b4a/Msgbox;->visible:Z

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    sget-boolean v1, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 132
    sput-boolean v3, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 133
    sput-object v4, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    .line 120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 122
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->closeMyLoop:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setDismissMessage(Landroid/os/Message;)V

    .line 124
    const/4 v1, 0x1

    sput-boolean v1, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 125
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 127
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 128
    sget-boolean v1, Lanywheresoftware/b4a/Msgbox;->stopCodeAfterDismiss:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 129
    new-instance v1, Lanywheresoftware/b4a/B4AUncaughtException;

    invoke-direct {v1}, Lanywheresoftware/b4a/B4AUncaughtException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    .line 132
    sput-boolean v3, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 133
    sput-object v4, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    .line 134
    throw v1

    .line 132
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    sput-boolean v3, Lanywheresoftware/b4a/Msgbox;->visible:Z

    .line 133
    sput-object v4, Lanywheresoftware/b4a/Msgbox;->visibleAD:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static msgboxIsVisible()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lanywheresoftware/b4a/Msgbox;->visible:Z

    return v0
.end method

.method public static sendCloseMyLoopMessage()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 90
    sget-object v1, Lanywheresoftware/b4a/Msgbox;->closeMyLoop:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void
.end method

.method public static waitForMessage(ZZ)V
    .locals 6
    .parameter "allowB4ARunnables"
    .parameter "onlyDrawableEvents"

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    .line 160
    .local v3, queue:Landroid/os/MessageQueue;
    :cond_0
    :goto_0
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->nextM:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 161
    .local v2, msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 162
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v5, Lanywheresoftware/b4a/Msgbox;->closeMyLoop:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 163
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 206
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #queue:Landroid/os/MessageQueue;
    :goto_1
    return-void

    .line 169
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #queue:Landroid/os/MessageQueue;
    :cond_1
    if-nez p0, :cond_3

    invoke-virtual {v2}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v4

    instance-of v4, v4, Lanywheresoftware/b4a/BA$B4ARunnable;

    if-eqz v4, :cond_3

    .line 171
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->whenF:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2

    .line 173
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 174
    .local v1, flags:I
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    and-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 176
    .end local v1           #flags:I
    :cond_2
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #queue:Landroid/os/MessageQueue;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #queue:Landroid/os/MessageQueue;
    :cond_3
    if-eqz p1, :cond_6

    .line 180
    :try_start_1
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    .line 181
    :cond_4
    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_6

    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x96

    if-gt v4, v5, :cond_6

    .line 188
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->whenF:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_5

    .line 190
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 191
    .restart local v1       #flags:I
    sget-object v4, Lanywheresoftware/b4a/Msgbox;->flagsF:Ljava/lang/reflect/Field;

    and-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 194
    .end local v1           #flags:I
    :cond_5
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 199
    :cond_6
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 200
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
