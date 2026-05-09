package com.kalanba.msound

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Surface(modifier = Modifier.fillMaxSize(), color = Color(0xFF0D0D0D)) {
                Column(modifier = Modifier.padding(24.dp)) {
                    Text("MSound", style = MaterialTheme.typography.headlineLarge, color = Color.White)
                    Spacer(modifier = Modifier.height(16.dp))
                    Text("Próximamente: Tu música a otro nivel en Android 🔥", color = Color.Gray)
                    
                    Button(
                        onClick = { /* Play */ },
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF1DB954)),
                        modifier = Modifier.padding(top = 20.dp)
                    ) {
                        Text("Play Music", color = Color.Black)
                    }
                }
            }
        }
    }
}
